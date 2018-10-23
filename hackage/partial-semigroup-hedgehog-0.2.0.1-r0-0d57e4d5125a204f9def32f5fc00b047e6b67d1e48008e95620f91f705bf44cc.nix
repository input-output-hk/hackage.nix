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
        name = "partial-semigroup-hedgehog";
        version = "0.2.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup";
      url = "";
      synopsis = "Property testing for partial semigroups using Hedgehog";
      description = "Provides a Hedgehog property to check the @PartialSemigroup@ associativity\naxiom.";
      buildType = "Simple";
    };
    components = {
      "partial-semigroup-hedgehog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.partial-semigroup)
        ];
      };
    };
  }