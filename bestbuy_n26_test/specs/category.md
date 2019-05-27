# Category

tags: category

Create, list and search for categories.


## Create Category

tags: post, regression

* POST/categories "json/category.json"
* "POST" Response code must be "201"
* Validate category created from response


## Get Categories with TV in the name

tags: get, name, tv

* GET/products?"name[$like]=*TV*"
* "GET" Response code must be "200"


## List Categories

tags: get, list

* GET/categories
* "GET" Response code must be "200"


## Create Category without id

tags: post, error, id

* POST/categories "json/category.json" with "id" ""
* "POST" Response code must be "400"
* Error must be "'id' should NOT be shorter than 1 characters"


## Create Category without name

tags: post, error, name

* POST/categories "json/category.json" with "name" ""
* "POST" Response code must be "400"
* Error must be "'name' should NOT be shorter than 1 characters"