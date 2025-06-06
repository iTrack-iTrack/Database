CREATE TABLE users
(
	user_id       INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,

	full_name     TEXT    NOT NULL,
	picture       TEXT,

	contact       TEXT    NOT NULL,
	date_of_birth DATE    NOT NULL,
	address       TEXT    NOT NULL,

	sickness      TEXT
);

CREATE TABLE sensor_data
(
	user_id         INTEGER                            NOT NULL,

	date_time       DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,

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
