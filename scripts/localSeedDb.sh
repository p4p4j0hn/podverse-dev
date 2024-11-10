#!/usr/bin/env bash

docker run --rm \
  --volume $LOCAL_WORKSPACE_FOLDER/config/google/jwt.keys.json:/tmp/src/config/google/jwt.keys.json:ro \
  --env-file /workspaces/config/podverse-api-local.env \
  --network podverse-dev_devcontainer_default \
  $(docker build -q ./podverse-api) \
  /usr/local/bin/yarn dev:seeds:qa:populateDatabase
