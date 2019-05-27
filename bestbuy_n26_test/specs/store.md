# Stores

tags: store

Create, list and search for stores.


## Create Store

tags: post, regression

* POST/stores "json/store.json"
* "POST" Response code must be "201"
* Validate store created from response


## Get Store by ID

tags: get, id

* GET/stores?"id=9999679"
* "GET" Response code must be "200"


## Get stores in Minnesota

tags: get, state

* GET/stores?"state=MN"
* "GET" Response code must be "200"


## List Stores

tags: get, list

* GET/stores
* "GET" Response code must be "200"


## Create Store without name

tags: post, error, name

* POST/stores "json/store.json" with "name" ""
* "POST" Response code must be "400"
* Error must be "'name' should NOT be shorter than 1 characters"


## Create Store without type

tags: post, error, tyoe

* POST/stores "json/store.json" with "type" ""
* "POST" Response code must be "400"
* Error must be "'type' should NOT be shorter than 1 characters"

## Create Store without address


tags: post, error, address

* POST/stores "json/store.json" with "address" ""
* "POST" Response code must be "400"
* Error must be "'address' should NOT be shorter than 1 characters"


## Create Store without city

tags: post, error, city

* POST/stores "json/store.json" with "city" ""
* "POST" Response code must be "400"
* Error must be "'city' should NOT be shorter than 1 characters"


## Create Store without state

tags: post, error, state

* POST/stores "json/store.json" with "state" ""
* "POST" Response code must be "400"
* Error must be "'state' should NOT be shorter than 1 characters"


## Create Store without zip

tags: post, error, zip

* POST/stores "json/store.json" with "zip" ""
* "POST" Response code must be "400"
* Error must be "'zip' should NOT be shorter than 1 characters"


## Create Store with invalid lat

tags: post, error, lat

* POST/stores "json/store.json" with "lat" "Test"
* "POST" Response code must be "400"
* Error must be "'lat' should be number"


## Create Store with invalid lng

tags: post, error, lng

* POST/stores "json/store.json" with "lng" "Test"
* "POST" Response code must be "400"
* Error must be "'lng' should be number"


## Create Store without hours

tags: post, error, hours

* POST/stores "json/store.json" with "hours" ""
* "POST" Response code must be "400"
* Error must be "'hours' should NOT be shorter than 1 characters"