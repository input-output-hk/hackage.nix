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
        name = "h-gpgme";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(c) Reto Habluetzel 2015";
      maintainer = "rethab@rethab.ch";
      author = "Reto Habluetzel 2015";
      homepage = "https://github.com/rethab/h-gpgme";
      url = "";
      synopsis = "";
      description = "High Level Binding for GnuPG Made Easy (gpgme)";
      buildType = "Simple";
    };
    components = {
      "h-gpgme" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-gpgme)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.time)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bindings-gpgme)
            (hsPkgs.bytestring)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }