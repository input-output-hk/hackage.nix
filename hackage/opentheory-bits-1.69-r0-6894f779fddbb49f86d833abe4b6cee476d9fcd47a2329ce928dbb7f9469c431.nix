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
        name = "opentheory-bits";
        version = "1.69";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "http://opentheory.gilith.com/?pkg=natural-bits";
      url = "";
      synopsis = "Natural number to bit-list conversions";
      description = "Natural number to bit-list conversions - this package was automatically\ngenerated from the OpenTheory package natural-bits-1.69";
      buildType = "Simple";
    };
    components = {
      "opentheory-bits" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
          (hsPkgs.opentheory-probability)
        ];
      };
    };
  }