#!/bin/bash
set -e

# Set git user name
git config user.name ${GIT_COMMITTER_NAME}

# Set git user email
git config user.email ${GIT_COMMITTER_EMAIL}

# Set pgp siging key
git config user.signingkey ${PGP_KEY_ID}

# Set the custom gpg program (that passes the passphrase to `gpg`)
git config gpg.program ./.github/scripts/gpg.sh

# Sign commits with PGP key
git config commit.gpgsign true
