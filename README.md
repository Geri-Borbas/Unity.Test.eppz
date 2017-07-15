# eppz! [![Build Status](https://travis-ci.org/eppz/Unity.Test.eppz.png?branch=master)](https://travis-ci.org/eppz/Unity.Test.eppz)

Unity Test project for [**Unity.Library.eppz**](https://github.com/eppz/Unity.Library.eppz) to run Editor Tests on Travis CI.

## How it works

1. You can **install Unity from command line**.
2. You can **run Unity Editor Tests from command line**.
3. That is it.

See installation details at [Downloading and installing Unity](https://docs.unity3d.com/Manual/InstallingUnity.html), or even better use [`install-unity`](https://github.com/sttz/install-unity) by [Adrian Stutz](https://github.com/sttz)). More on editor test runner at [Unity Test Runner](https://docs.unity3d.com/Manual/testing-editortestsrunner.html), and [Command line arguments](https://docs.unity3d.com/Manual/CommandLineArguments.html)).

## Setup on Travis CI

You just have to hook up the above on [Travis CI](https://travis-ci.org/) (or any CI of your choice). See [`.travis.yml`](.travis.yml) below, and [`.scripts/test`](.scripts/test) for more (I added a step there to output test results).

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