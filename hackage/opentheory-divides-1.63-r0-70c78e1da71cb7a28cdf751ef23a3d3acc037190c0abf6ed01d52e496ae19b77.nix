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
        name = "opentheory-divides";
        version = "1.63";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "http://opentheory.gilith.com/?pkg=natural-divides";
      url = "";
      synopsis = "The divides relation on natural numbers";
      description = "The divides relation on natural numbers - this package was automatically\ngenerated from the OpenTheory package natural-divides-1.63";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
        ];
      };
      tests = {
        "opentheory-divides-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
          ];
        };
      };
    };
  }