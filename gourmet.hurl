# Gourmet is UP
GET https://gourmet.quimerch.com
HTTP 200

# Recipe page is accessible
GET https://gourmet.quimerch.com/recipes/dahl-de-lentilles
HTTP 200
[Asserts]
body contains "Dahl de lentilles"

# Admin is not accessible without Basic Auth credentials
GET https://gourmet.quimerch.com/admin
HTTP 401

# Admin is accessible with Basic Auth credentials
GET https://gourmet.quimerch.com/admin
Authorization: Basic {{GOURMET_BASIC_AUTH}}
HTTP 200
