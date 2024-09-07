# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

cd ../book_catalog

docker build --no-cache -t $CONTAINER_REGISTRY/catalog:$VERSION --file .

#docker build -t $CONTAINER_REGISTRY/inventory:$VERSION --file ./inventory_management/Dockerfile .
