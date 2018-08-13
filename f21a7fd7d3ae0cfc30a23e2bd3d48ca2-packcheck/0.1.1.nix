{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "packcheck";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/harendra-kumar/packcheck";
      url = "";
      synopsis = "Universal build and CI testing for Haskell packages";
      description = "`packcheck` is a minimal yet complete \"hello world\" Haskell package with model\n`travis` and `appveyor` config files that can be used unmodified in any Haskell\npackage. The CI configs can be modified `declaratively` to adapt to `any`\nkind of build scenario you can imagine.\n\nThe package includes @packcheck.sh@, a high level universal super build script\nto uniformly, consistently build and comprehensively sanity test a Haskell\npackage across build tools (stack/cabal) and across all platforms\n(Linux\\/MacOS\\/Windows).  You do not need to be familiar with any of the build\ntools to use it.\n\nTo use it for CI, simply copy the @.travis.yml@, @appveyor.yml@ config files from this\npackage to your package and that's it. It should work without modification,\nof course you can edit them to customize. For use on local host, just copy\nover the @packcheck.sh@ script and put it in your `PATH`. Run the script from\nthe package directory of the package you want to build.\n\n> \$ packcheck.sh stack\n> \$ packcheck.sh cabal\n\nThis is also a minimal yet complete model package (with tests, benchmarks,\nLinux\\/MacOS\\/Windows CI already working) that can be used as a starting point to\ndevelop a new package. Beginners can use it to learn about haskell package\nmetadata structure.\n\nSee the README for comprehensive documentation.";
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