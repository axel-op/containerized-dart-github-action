# Hello world Dart action (containerized)

> [See here](https://gist.github.com/axel-op/deff66ac2f28a01813193d90de36c564) for a comparison of the different ways to build a GitHub Action with Dart.

A "Hello World" GitHub Action coded in Dart.

This action logs "Hello World", or "Hello" + the name of a person to greet.

The Dart application is located in the [`app`](./app) directory. To use this template, just edit the files inside this directory as you would with any Dart program, and it will work without modifiying any other file.

This action is executed in a Dart container, which is set up just for this action. Therefore it can be run in any workflow. However, the Dart environment will be independent of the other steps of the workflow. [See here](https://github.com/axel-op/self-contained-dart-action) to build an action with Dart without needing a Dart container.

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
      - uses: axel-op/containerized-dart-action@master
        id: dart-action
        with:
          who-to-greet: "Mona the Octocat"
      - run: echo 'The time was ${{ steps.dart-action.outputs.time }}'
```
