{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-semigroup-test"; version = "0.0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup#readme";
      url = "";
      synopsis = "Testing utilities for the partial-semigroup package";
      description = "Testing utilities for the partial-semigroup package,\nnotably property testing to check the PartialSemigroup\naxioms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.partial-semigroup)
          ];
        };
      };
    }