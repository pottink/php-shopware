cd 8.1
docker build --no-cache -t pottink/php-shopware:8.1 .
docker push pottink/php-shopware:8.1
cd ../8.2
docker build --no-cache -t pottink/php-shopware:8.2 .
docker push pottink/php-shopware:8.2
