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
      specVersion = "1.8.0.2";
      identifier = {
        name = "arithmetic";
        version = "1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Natural number arithmetic";
      description = "This package implements a library of natural number arithmetic functions,\nincluding Montgomery multiplication and continued fractions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
          (hsPkgs.opentheory-bits)
          (hsPkgs.opentheory-divides)
          (hsPkgs.opentheory-prime)
        ];
      };
      exes = {
        "arithmetic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
            (hsPkgs.opentheory-bits)
            (hsPkgs.opentheory-divides)
            (hsPkgs.opentheory-prime)
          ];
        };
      };
      tests = {
        "arithmetic-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
            (hsPkgs.opentheory-bits)
            (hsPkgs.opentheory-divides)
            (hsPkgs.opentheory-prime)
          ];
        };
      };
    };
  }