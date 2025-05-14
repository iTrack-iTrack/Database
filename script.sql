CREATE TABLE sensor_data(
	longitude REAL,
	latitude REAL,
	bpm INTEGER,
	date_time TIMESTAMP NOT NULL,
	audio_id INTEGER NOT NULL,
	CONSTRAINT date_time PRIMARY KEY(date_time)
);

CREATE TABLE audio_data(
	audio_id INTEGER FOREIGN KEY REFERENCES sensor_data(audio_id),
	audio_data INTEGER,
	CONSTRAINT audio_id PRIMARY KEY(audio_id)
);