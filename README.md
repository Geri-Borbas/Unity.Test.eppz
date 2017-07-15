# eppz! [![Build Status](https://travis-ci.org/eppz/Unity.Test.eppz.png?branch=master)](https://travis-ci.org/eppz/Unity.Test.eppz)

Unity Test project for [**Unity.Library.eppz**](https://github.com/eppz/Unity.Library.eppz) to run Editor Tests on Travis CI.

## How it works

1. You can **install Unity from command line**.
2. You can **run Unity Editor Tests from command line**.
3. That is it.

See installation details at [Downloading and installing Unity](https://docs.unity3d.com/Manual/InstallingUnity.html), or even better use [`install-unity`](https://github.com/sttz/install-unity) by [Adrian Stutz](https://github.com/sttz). More on editor test runner at [Unity Test Runner](https://docs.unity3d.com/Manual/testing-editortestsrunner.html), and [Command line arguments](https://docs.unity3d.com/Manual/CommandLineArguments.html).

## Setup on Travis CI

Having tests running inside Unity, you don't need to install any specific language. So just use `language: generic` on an `os: osx` environment (see [`.travis.yml`](.travis.yml) below). To run Unity tests, I wrapped up some tasks in a simple shell script at [`.scripts/test`](.scripts/test) (it has a step to convert and output test results as `JSON`).

```
os: osx
language: generic
install:  
  - sudo python .scripts/install-unity.py --package Unity 5.6.2f1
script:
  - .scripts/test $TRAVIS_BUILD_DIR eppz.TestResult.xml
```

## License

> Licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).