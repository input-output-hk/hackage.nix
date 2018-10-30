{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "throwable-exceptions";
        version = "0.1.0.5";
      };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000.develop@gmail.com";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-throwable-exceptions#README.md";
      url = "";
      synopsis = "throwable-exceptions gives the easy way to throw exceptions";
      description = "throwable-exceptions gives the easy way to throw exceptions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe-exceptions)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "throwable-exception-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.safe-exceptions)
            (hsPkgs.throwable-exceptions)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.safe-exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.throwable-exceptions)
          ];
        };
      };
    };
  }