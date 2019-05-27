# Product

tags: product

Create, list and search for products.


## Create Product

tags: post, regression

* POST/products "json/product.json"
* "POST" Response code must be "201"
* Validate product created from response


## Get Product by ID

tags: get, id

* GET/products?"id=9999679"
* "GET" Response code must be "200"


## Get Highest Priced Products

tags: get, price

* GET/products?"$sort[price]=-1"
* "GET" Response code must be "200"


## Get Product Name and Description Only

tags: get, name, description

* GET/products?"$select[]=name&$select[]=description"
* "GET" Response code must be "200"


## Get TVs with free shipping and price between $500 and $800

tags: get, name, price, shipping

* GET/products?"category.name=TVs&price[$gt]=500&price[$lt]=800&shipping[$eq]=0"
* "GET" Response code must be "200"


## List Products

tags: get, list

* GET/products
* "GET" Response code must be "200"


## Create Product without name

tags: post, error, name

* POST/products "json/product.json" with "name" ""
* "POST" Response code must be "400"
* Error must be "'name' should NOT be shorter than 1 characters"


## Create Product without type

tags: post, error, type

* POST/products "json/product.json" with "type" ""
* "POST" Response code must be "400"
* Error must be "'type' should NOT be shorter than 1 characters"


## Create Product without upc

tags: post, error, upc

* POST/products "json/product.json" with "upc" ""
* "POST" Response code must be "400"
* Error must be "'upc' should NOT be shorter than 1 characters"


## Create Product with invalid price

tags: post, error, price

* POST/products "json/product.json" with "price" "x"
* "POST" Response code must be "400"
* Error must be "'price' should be number"


## Create Product without description

tags: post, error, description

* POST/products "json/product.json" with "description" ""
* "POST" Response code must be "400"
* Error must be "'description' should NOT be shorter than 1 characters"


## Create Product without model

tags: post, error, model

* POST/products "json/product.json" with "model" ""
* "POST" Response code must be "400"
* Error must be "'model' should NOT be shorter than 1 characters"