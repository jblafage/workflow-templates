# dotnet-restore-build-test

This action restore, build then test a dotnet project/solution.

## Inputs

### `dotnet_project`

**Required** The path to the dotnet project file (.csproj). Default `"**/*.sln"`.

### `build_configuration`

**Required** The configuration to build and test the project/solution. Default `"Release"`.

### `run_restore`

**Required** Wether or not resore nuget packages. Default `"true"`.

### `run_tests`

**Required** Wether or not run tests. Default `"true"`.

## Outputs

No outputs

## Example usage

```yaml
uses: jblafage/workflow-templates/.github/docker-actions/dotnet-restore-build-test@main
with:
  dotnet_project: 'src/myapp.csproj'
  build_configuration: 'Release'
  run_restore: 'true'
  run_tests: 'false'
```
