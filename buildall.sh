cd 8.1
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t pottink/php-shopware:8.1 --push .
cd ../8.2
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t pottink/php-shopware:8.2 --push .
cd ../8.3
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t pottink/php-shopware:8.3 --push .
