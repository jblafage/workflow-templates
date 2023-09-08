#!/bin/sh -l

echo "::debug::dotnet project: $1"
echo "::debug::build configuration: $2"
echo "::debug::run restore $3"
echo "::debug::run tests $4"


if [ "$3" = "true" ]; then
    echo "::notice::Restoring packages..."
    dotnet restore "$1"
fi

echo "::notice::Building the project..."
dotnet build "$1" -c "$2"

if [ "$4" = "true" ]; then
    echo "::notice::Running tests..."
    dotnet test "$3" --no-restore --no-build --configuration "$2"
fi