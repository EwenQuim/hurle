# Perf is UP
GET https://perf.quimerch.com
HTTP/2 200
[Asserts]
duration < 1000

# Cache makes it faster the second time
GET https://perf.quimerch.com
HTTP/2 200
[Asserts]
duration < 300

# Perf is UP
GET https://perf.quimerch.com/?token=cs
HTTP/2 200
[Asserts]
duration < 1000
