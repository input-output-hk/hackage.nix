{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "packcheck";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/harendra-kumar/packcheck";
      url = "";
      synopsis = "Universal build and CI testing for Haskell packages";
      description = "This package contains a universal CI/build script @packcheck.sh@ and config\nfiles designed such that you can just copy over @.travis.yml@ and\n@appveyor.yml@ to your package repo and your package is CI ready in a jiffy.\nFor local testing, copy @packcheck.sh@ to your local machine, put it in your\nPATH, and run it from your package directory:\n\n> \$ packcheck.sh stack\n> \$ packcheck.sh cabal\n> \$ packcheck.sh cabal-new\n\nYou can try it on this package itself. @packcheck.sh@ uniformly, consistently\nbuilds and comprehensively sanity tests a Haskell package across build tools\n(stack/cabal) and across all platforms (Linux\\/MacOS\\/Windows).  You do not\nneed to be familiar with any of the build tools to use it.\n\nThis is also a minimal yet complete model package (with tests, benchmarks, CI\nalready working) that can be used as a starting point to develop a new\npackage. Beginners can use it to learn about haskell package metadata\nstructure, benchmarks, tests, CI configs etc.\n\nSee the README for comprehensive documentation.";
      buildType = "Simple";
    };
    components = {
      "packcheck" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.packcheck)
            (hsPkgs.base)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.packcheck)
            (hsPkgs.base)
          ];
        };
      };
    };
  }