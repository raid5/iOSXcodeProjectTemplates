# iOS Xcode Project Templates

These are a set of Xcode project templates I built to quickly get a new iOS projects up and running with some common testing frameworks.

## Installation

1. Copy the `TDD Application` directory to `/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Project Templates/Application`
2. Profit!

## Usage

1. Create a new Xcode project
2. Select `TDD Application` from the available templates and select your target device(s).

This will create a new project with three application targets

1. **AppName** (installs main application)
2. **AppName-Frankified** (installs main application with the Frank server)
3. **AppName-Tests** (installs application with the GHUnit interface)

## Project Types

* iPhone
* iPad
* Universal (iPhone/iPad)

## Bootstrapped Testing Frameworks

* [Frank](https://github.com/moredip/Frank) (acceptance testing)
* [GHUnit](https://github.com/gabriel/gh-unit) (unit testing)
* [OCMock](http://www.mulle-kybernetik.com/software/OCMock/) (mocking)
* [OCHamcrest](http://code.google.com/p/hamcrest/) (matchers)