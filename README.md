# workflow-templates

Set of GitHub reusable workflows and composite actions.
What is the difference? Some explanations [here](https://dev.to/n3wt0n/composite-actions-vs-reusable-workflows-what-is-the-difference-github-actions-11kd)

## Reusable workflows

It corresponds to jobs that can be called from another repository to avoid duplication of code.
Reusable workflows are located in `.github/workflows`

How to call a reusable workflow?

``` yml
jobs:
  call-docker-build-push-image:
    uses: jblafage/workflow-templates/.github/workflows/docker-build-push-image.yml@main
    with:
      image_repository: my-image
      build_context: ..
      dockerfile: docker/Dockerfile
      registry_username: user
    secrets:
      registry_password: ${{ secrets.registry_password }}

```

## Composite actions

It corresponds to a set of actions (tasks) that can be called from a job.

How to call a composite action?

``` yml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: jblafage/workflow-templates/.github/actions/dotnet-restore-build-test@main
      with:
        dotnet_version: 6.0.x
```
