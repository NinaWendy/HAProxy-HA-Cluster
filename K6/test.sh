#/bin/bash

# Run a test.

k6 new # generates script.js

k6 run script.js

# Add virtual users.

k6 run --vus 10 --duration 30s script.js #Running a 30-second, 10-VU load test

# Increase the test duration.
# Instead of typing --vus 10 and --duration 30s each time you run the script, you can set the options in your JavaScript file

# Ramp the number of requests up and down as the test runs.

export const options = {
  stages: [
    { duration: '30s', target: 20 },
    { duration: '1m30s', target: 10 },
    { duration: '20s', target: 0 },
  ],
};