# Hello world Dart action (containerized)

A "Hello World" GitHub Action coded in Dart.

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

The Dart application is located in the [`app`](./app) directory. To use this template, just edit the files inside this directory as you would with any Dart program, and it will work without modifiying any other file.

This action is executed in a Dart container, which is set up just for this action. Therefore it can be run in any workflow. However, the Dart environment will be independent of the other steps of the workflow. If you want your action to be run in the same Dart environment as the other steps, see [this template for a Dart Action run with Javascript](https://github.com/axel-op/hello-world-dart-action).

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

    # No need to build a container here!

    steps:
      - uses: axel-op/containerized-dart-action@master
        id: dart-action
        with:
          who-to-greet: "Mona the Octocat"
      - run: echo 'The time was ${{ steps.dart-action.outputs.time }}'
```
