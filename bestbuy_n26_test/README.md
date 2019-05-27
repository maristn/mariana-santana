# Setup


## Build and run api-playground

```
git clone https://github.com/bestbuy/api-playground/
cd api-playground
npm install
npm start
```

## Build and run bestbuy_n26_test

Tests are developed using [Gauge](http://getgauge.io/index.html).

**Prerequisite:**
- Install [Docker](https://docs.docker.com/install/)
- Install [Github](https://github.com)

- Clone the project
```
git clone git@github.com:maristn/bestbuy_n26_test.git && cd bestbuy_n26_test
```

- Build the project
```
docker-compose build
```

- Change LOCAL on [main.properties](https://github.com/maristn/mariana-santana/blob/master/bestbuy_n26_test/env/default/main.properties) to your IP 
```
LOCAL = http://192.168.15.11:3030
```

- Execute all the tests
```
docker-compose run --rm gauge run --verbose specs
```

## Examples

#### Execute a set of specs
```
docker-compose run --rm gauge run --verbose specs/product.md
```

#### Execute tests by flag
```
docker-compose run --rm gauge run --verbose --tags regression specs
```

#### Rerun failed tests
Just add `--failed` before the specs, ex.:
```
docker-compose run --rm gauge run --failed
```
