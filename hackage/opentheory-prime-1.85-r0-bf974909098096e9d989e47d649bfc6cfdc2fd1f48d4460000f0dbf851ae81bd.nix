{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "opentheory-prime";
        version = "1.85";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "http://opentheory.gilith.com/?pkg=natural-prime";
      url = "";
      synopsis = "Prime natural numbers";
      description = "Prime natural numbers - this package was automatically generated from the\nOpenTheory package natural-prime-1.85";
      buildType = "Simple";
    };
    components = {
      "opentheory-prime" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
          (hsPkgs.opentheory-divides)
          (hsPkgs.opentheory-stream)
        ];
      };
      tests = {
        "opentheory-prime-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
            (hsPkgs.opentheory-divides)
            (hsPkgs.opentheory-stream)
          ];
        };
      };
    };
  }