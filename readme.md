0) CHECKOUT YOUR OWN BRANCH! do not push to master

1) Create an empty mysql database on your local server
2) execute the scripts in sql folder in your empty database in this order
    - iot_measurements
    - companies
    - users
    - fks
3) configure the .env file with your database preferences (host port user password)
4) to run, first 'npm install --save' then 'npm run dev'
5) there are two routes in the index.js files
    - performance: Optimzize the logic to get the entire data in one query
    - measurements: Provide device ids in query params (comma seperated) and validate them using express-validator to return any errors before moving to querying the database
        Return two objects in the response
            1) the latest reading for each sensor of each device (group by both)
            2) the number of times a sensor in a device reported a unique status (distinct alarm_id), the result should have for each sensor of each device 4 counts (good,poor,problem,ok) which are the 4 available statuses
                notes:
                    - each device has multiple sensors
                    - each reading has a status (good,ok,poor,problem) based on specified ranges
                    - alarm_id represents a state changes, for a given sensor of a given device, alarm_id remains constant until a new status is inserted, a new alarm_id is used to represent a state change.

    note: use postman for testing, no need for authentication
6) fill/fix these routes
7) push to your own branch and notify me