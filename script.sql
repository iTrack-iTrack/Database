CREATE TABLE users
(
	user_id       INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,

	full_name     TEXT     NOT NULL,
	date_of_birth DATETIME NOT NULL, 
	picture       TEXT,

	medications   TEXT,
	health_issues TEXT,
);

CREATE TABLE sensor_data
(
	date_time    DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,

	user_id      INTEGER                            NOT NULL,

	accelgyro_id INTEGER,

	longitude    REAL,
	latitude     REAL,

	bpm          INTEGER,

	blood_oxygen INTEGER,

	PRIMARY KEY (date_time, user_id, accelgyro_id),

	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE accelgyro_data
(
	accelgyro_id    INTEGER NOT NULL,

	accelerometer_x REAL,
	accelerometer_y REAL,
	accelerometer_z REAL,

	gyroscope_x     REAL,
	gyroscope_y     REAL,
	gyroscope_z     REAL,

	temperature     REAL,

	PRIMARY KEY (accelgyro_id),

	FOREIGN KEY (accelgyro_id) REFERENCES sensor_data(accelgyro_id)
);
