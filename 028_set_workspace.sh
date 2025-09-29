#!/usr/bin/env bash
set -e

WORKSPACE="$HOME/Workspace"
mkdir -p "$WORKSPACE"
cd "$WORKSPACE"

REPOS=(
    "git@github.com:comradeos/nixnotes.git"
    "git@github.com:comradeos/sandbox.git"
    "git@github.com:comradeos/private.git"
    "git@github.com:comradeos/ccore.git"
    "git@github.com:comradeos/pythoncore.git"
    "git@github.com:comradeos/gocore.git"
    "git@github.com:comradeos/dockerenvs.git"
    "git@github.com:comradeos/jscore.git"
    "git@github.com:comradeos/denvset.git"
    "git@github.com:comradeos/dotnetcore.git"
    "git@github.com:comradeos/cppcore.git"
    "git@github.com:comradeos/phpcore.git"
    "git@github.com:comradeos/erlangcore.git"
    "git@github.com:comradeos/rustcore.git"
    "git@github.com:comradeos/public.git"
    "git@github.com:comradeos/localhost.git"

    "git@github.com:ridelvatech/ProspectorOS.git"
    "git@github.com:ridelvatech/ProspectorUI.git"
    "git@github.com:ridelvatech/ProspectorCore.git"
    "git@github.com:ridelvatech/ElvatechUpdater.git"
)

for repo in "${REPOS[@]}"; do
    name=$(basename "$repo" .git)
    if [ -d "$name/.git" ]; then
        echo "[*] Updating $name..."
        git -C "$name" pull --ff-only
    else
        echo "[*] Cloning $name..."
        git clone "$repo"
    fi
done

echo "[*] All repositories are ready in $WORKSPACE"
