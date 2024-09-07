# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -t $CONTAINER_REGISTRY/catalog:$VERSION --file ./book_catalog/Dockerfile .

docker build -t $CONTAINER_REGISTRY/inventory:$VERSION --file ./inventory_management/Dockerfile .