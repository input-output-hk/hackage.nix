{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "partial-semigroup-test";
          version = "0.1.0.3";
        };
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
        partial-semigroup-test = {
          depends  = [
            hsPkgs.base
            hsPkgs.hedgehog
            hsPkgs.partial-semigroup
          ];
        };
      };
    }