# eppz!

Unity Test project for [**Unity.Library.eppz**](https://github.com/eppz/Unity.Library.eppz) to run Editor Tests on.

## How it works

Unity can **run editor tests from command line** (see more at [Unity Test Runner](https://docs.unity3d.com/Manual/testing-editortestsrunner.html), and [Command line arguments](https://docs.unity3d.com/Manual/CommandLineArguments.html)), also can be installed from command line (using [`install-unity`](https://github.com/sttz/install-unity) by [Adrian Stutz](https://github.com/sttz)).

Then you just have to hook this up on Travis (or any CI of your choice). See [`.travis.yml`](.travis.yml) below, and [`.scripts/test.command`](.scripts/test.command) for more.

## License

> Licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).