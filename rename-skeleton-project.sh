#!/bin/bash

if [ "$1" == "-h" ] || [ -z "$1" ]; then
    echo "Rename Skeleton API project to your desired project name"
    echo "Usage: `basename $0` [your-project-name]"
    exit 0
fi

grep -RiIl 'skeleton' --exclude=rename-skeleton-project.sh | xargs sed -i '' -e "s/skeleton/$1/g"
mv api-definitions/skeleton-api.oas.yaml api-definitions/$1-api.oas.yaml