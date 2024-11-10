#!/usr/bin/env bash

# only run once
if ! [[ -f /workspaces/.devcontainer/frontend-only/.frontend-setup ]]; then
  touch /workspaces/.devcontainer/frontend-only/.frontend-setup
  pushd /workspaces
  # Initialize database
  make local_seed_db
  # Index the database
  make local_manticore_indexes_init
  popd
  # Install the packages
  yarn
fi
