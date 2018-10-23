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
        name = "safe-money-store";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Instances from the store library for the safe-money library.";
      description = "This library exports @Store@ instances (from the @store@ library)\nfor many of the types exported by the @safe-money@ library.\n\nNote: The code in this library used to be part of the @safe-money@\nlibrary itself, so these instances are intended to be backwards\ncompatible with older versions of @safe-money@.";
      buildType = "Simple";
    };
    components = {
      "safe-money-store" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.safe-money)
          (hsPkgs.store)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.store)
            (hsPkgs.bytestring)
            (hsPkgs.safe-money)
            (hsPkgs.safe-money-store)
            (hsPkgs.store)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }