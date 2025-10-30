# Grafana K6

## Use Case

1. Load and performance testing

    k6 is optimized for minimal resource consumption and designed for running high-load performance tests such as spike, stress, or soak tests.

2. Browser performance testing

    Through the k6 browser API, you can run browser-based performance tests and collect browser metrics to identify performance issues related to browsers. Additionally, you can mix browser tests with other performance tests to get a comprehensive view of your website’s performance.

3. Performance and synthetic monitoring

    You can schedule tests to run with minimal load very frequently, continuously validating the performance and availability of your production environment. For this, you can also use Grafana Cloud Synthetic Monitoring, which supports running k6 scripts.

4. Automation of performance tests

    k6 integrates seamlessly with CI/CD and automation tools, enabling engineering teams to automate performance testing as part of their development and release cycle.

5. Chaos and resilience testing

    You can use k6 to simulate traffic as part of your chaos experiments, trigger them from your k6 tests or inject different types of faults in Kubernetes with xk6-disruptor.

6. Infrastructure testing

    With k6 extensions, you can add support to k6 for new protocols or use a particular client to directly test individual systems within your infrastructure.

## Test Case

k6 supports three execution modes to run a k6 test: local, distributed, and cloud.

- Local: the test execution happens entirely on a single machine, container, or CI server.

- Distributed: the test execution is distributed across a Kubernetes cluster.

- Cloud: the test runs on Grafana Cloud k6.