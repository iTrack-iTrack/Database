CREATE TABLE users
(
	user_id       INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,

	password      TEXT                              NOT NULL,

	first_name    TEXT                              NOT NULL,
	last_name     TEXT                              NOT NULL,

	date_of_birth DATE                              NOT NULL,

	country       TEXT                              NOT NULL,
	region        TEXT                              NOT NULL,
	street        TEXT                              NOT NULL,
	house_number  TEXT                              NOT NULL,
	contact       TEXT                              NOT NULL,

	sickness      TEXT                              NOT NULL,

	picture       TEXT
);

CREATE TABLE sensor_data
(
	user_id         INTEGER  NOT NULL,

	date_time       DATETIME NOT NULL,

	accelerometer_x REAL,
	accelerometer_y REAL,
	accelerometer_z REAL,

	gyroscope_x     REAL,
	gyroscope_y     REAL,
	gyroscope_z     REAL,

	temperature     REAL,

	longitude       REAL,
	latitude        REAL,

	bpm             INTEGER,
	blood_oxygen    INTEGER,

	PRIMARY KEY (date_time, user_id),

	FOREIGN KEY (user_id) REFERENCES users (user_id)
);
