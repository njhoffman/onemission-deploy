#!/usr/bin/env bash

function remove {
  echo "INFO: Stopping containers"
  docker-compose stop
  echo "INFO: Removing containers"
  docker-compose rm -f
  echo "INFO: Removing om_app image"
  docker rmi -f om_app om_wordpress
  echo "INFO: Setting file permissions to that of the user"
  docker run --rm \
    -v $(pwd):/clean \
    -e UID=$(id -u) \
    -e GID=$(id -g) \
    nginx:latest /bin/bash -c 'chown -R $UID:$GID /clean'

  docker volume prune -f
  echo "INFO: Pruning unused docker volumes"
  docker volume prune -f
  echo "INFO: Pruning unused docker networks"
  docker network prune -f
  echo "INFO: Removing directories and contents"
  rm -rf ./data/certs/ ./data/certs-data/ ./data/logs/ ./data/mysql/ ./data/wordpress/
  echo "INFO: Done"
}

remove
# Stop running containers and remove related directories
# read -p "Do you really want to stop and remove EVERYTHING (y/n)? " answer
# case ${answer:0:1} in
#   y|Y )
#     remove
#     exit 0;
#     ;;
#   * )
#     echo "INFO: Exiting without stopping containers or removing files"
#     exit 0;
#     ;;
# esac

exit 0;
