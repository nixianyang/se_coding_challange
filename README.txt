The command to run the code in the medag folder:
digdag run run_it.dig

Prerequisite:
1. Fill in the password of your MySQL database in all yml files in mydata folder.
2. Use the following command to set password for mysql plugin:
digdag secrets --local --set mysql.password
3. Unzip file to home directory so that path in run_it.dig can work.
4. Update the path to the raw data in all yml files in mydata folder.
