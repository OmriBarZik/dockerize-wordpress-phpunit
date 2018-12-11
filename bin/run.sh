# Change to parent direcotry
cd "$(dirname "$0")/../"

docker-compose run --rm phpunit phpunit