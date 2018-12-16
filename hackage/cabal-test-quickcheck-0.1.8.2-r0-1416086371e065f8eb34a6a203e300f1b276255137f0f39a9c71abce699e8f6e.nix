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
        name = "cabal-test-quickcheck";
        version = "0.1.8.2";
      };
      license = "MIT";
      copyright = "(c) 2013-2018 Timothy Jones";
      maintainer = "Timothy Jones <tim@zmthy.net>";
      author = "Timothy Jones";
      homepage = "https://github.com/zmthy/cabal-test-quickcheck";
      url = "";
      synopsis = "QuickCheck for Cabal";
      description = "Support for QuickCheck with the 'detailed' Cabal testing interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }