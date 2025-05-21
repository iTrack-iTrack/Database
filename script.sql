CREATE TABLE users(
    user_id INTEGER NOT NULL,
    full_name TEXT NOT NULL,
    age INTEGER NOT NULL, 
    medications TEXT,
    health_issues TEXT,
    PRIMARY KEY(user_id)
);

CREATE TABLE sensor_data(
    user_id INTEGER FOREIGN KEY REFERENCES users(user_id),
	longitude REAL,
	latitude REAL,
	bpm INTEGER,
	date_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	audio_id INTEGER NOT NULL,
    accelerometer_id INTEGER NOT NULL,
	PRIMARY KEY(date_time, user_id)
);

CREATE TABLE audio_data(
	audio_id INTEGER FOREIGN KEY REFERENCES sensor_data(audio_id),
    audio_order INTGER NOT NULL AUTOINCREMENT,
	audio_data INTEGER,
	PRIMARY KEY(audio_id, audio_order)
);

CREATE TABLE accelerometer_data(
    accelerometer_id INTEGER FOREIGN KEY REFERENCES sensor_data(accelerometer_id),
    x REAL, 
    y REAL,
    z REAL,
    PRIMARY KEY(accelerometer_id)
);