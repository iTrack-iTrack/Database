CREATE TABLE users
(
	user_id       INTEGER  NOT NULL,

	full_name     TEXT     NOT NULL,
	date_of_birth DATETIME NOT NULL, 

	medications   TEXT,
	health_issues TEXT,

	PRIMARY KEY(user_id)
);

CREATE TABLE sensor_data
(
	date_time    DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,

	user_id      INTEGER                            NOT NULL,

	audio_id     INTEGER,
	accelgyro_id INTEGER,

	longitude    REAL,
	latitude     REAL,

	bpm          INTEGER,

	blood_oxygen INTEGER,

	PRIMARY KEY (date_time, user_id, audio_id, accelgyro_id),

	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE audio_data
(
	audio_id    INTEGER              NOT NULL,

	audio_order INTGER AUTOINCREMENT NOT NULL,

	audio_data  INTEGER,

	PRIMARY KEY (audio_id, audio_order),

	FOREIGN KEY (audio_id) REFERENCES sensor_data(audio_id)
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

	PRIMARY KEY (accelerometer_id),

	FOREIGN KEY (accelerometer_id) REFERENCES sensor_data(accelerometer_id)
);
