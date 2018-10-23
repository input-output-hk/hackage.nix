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
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "(c) Reto Habluetzel 2014";
      maintainer = "rethab@rethab.ch";
      author = "Reto Habluetzel 2014";
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
          (hsPkgs.unix)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bindings-gpgme)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }