{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "partial-semigroup-hedgehog";
        version = "0.4.0.0";
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