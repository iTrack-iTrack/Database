# Database

The Database repository is a project that creates the structure for the data to store and accesse relevant information.

## Setup

The following are required for this project.

- [SQLite3](https://www.sqlite.org/index.html)
- [POSIX Shell](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html)
- [Systemd](https://systemd.io/)

## Usage

To create the database file, first create and enter the `build` directory using `mkdir build && cd build`. Then, run `cat ../script.sql | sqlite3 output.db`; this will create the SQL database file that will be stored in the long term. It is recommended that the file is stored only ever in one chosen place, since if it moves in a different directory, other project that depend on the database file may be out of sync, or non-functional.

A helper script `run.sh` is provided if the user wishes to have the Database file be backed up every few intervals. In the case that the user wishes to have the Database always be backed up in the background of the Operating System, a systemd service file exists from the user to use. To use it, use the command `sudo mv Database.service /etc/systemd/system/`, then run `sudo systemctl daemon-reload` to update the list of available services, execute `sudo systemctl enable Database.service` to have the service run on boot, and finally `sudo systemctl start Database.service` to execute the service and make it run in the background.
