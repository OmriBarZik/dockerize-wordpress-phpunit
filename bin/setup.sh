# Change to parent direcotry
cd "$(dirname "$0")/../"

# wait until the database is up and then install wordpress test environment

docker-compose run --rm phpunit dockerize -wait tcp://mysql:3306 -timeout 30s bash ./bin/install-wp-tests.sh wordpress_test root password mysql latest true
