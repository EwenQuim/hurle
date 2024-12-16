# Nuage is UP
GET https://nuage.quimerch.com
HTTP/2 200
[Asserts]
duration < 500


# Get Templ VS Gomponents article
GET https://nuage.quimerch.com/-/ewen/articles/templ-vs-gomponents
HTTP 200
[Asserts]
duration < 500
header "Content-Type" == "text/html; charset=utf-8"
xpath "string(//title)" == "Nuage | Articles/Templ vs Gomponents"

