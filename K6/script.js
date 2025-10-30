import http from 'k6/http';
import { sleep, check } from 'k6';

export const options = {
  stages: [
    { duration: '30s', target: 20 }, // ramp up to 20 users
    { duration: '1m', target: 50 },  // increase load
    { duration: '30s', target: 0 },  // ramp down
  ],
};

export default function () {
  const res = http.get('http://192.168.84.100'); // L4 VIP
  check(res, {
    'status is 200': (r) => r.status === 200,
  });
  sleep(1);
}
