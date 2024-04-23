{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "packcheck"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/packcheck";
      url = "";
      synopsis = "Universal build and CI testing for Haskell packages";
      description = "This package contains a universal CI/build script @packcheck.sh@ and config\nfiles designed such that you can just copy over @.travis.yml@, @appveyor.yml@\nor @.circleci/config.yml@ to your package repo and your package is CI ready\nin a jiffy.  You can build and test packages on local machine as well. For\nlocal testing, copy @packcheck.sh@ to your local machine, put it in your\nPATH, and run it from your package directory:\n\n> $ packcheck.sh cabal-v2\n> $ packcheck.sh stack\n\nYou can try the script on this package itself. It builds and comprehensively\nsanity tests a Haskell package across build tools (stack/cabal), uniformly,\nconsistently and across all platforms (Linux\\/MacOS\\/Windows).  You do not\nneed to be familiar with any of the build tools to use it.\n\nThis is also a minimal yet complete model package (with tests, benchmarks, CI\nalready working) that can be used as a starting point to develop a new\npackage. Beginners can use it to learn about haskell package metadata\nstructure, benchmarks, tests, CI configs etc.\n\nSee the README for comprehensive documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."packcheck" or (errorHandler.buildDepError "packcheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."packcheck" or (errorHandler.buildDepError "packcheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }