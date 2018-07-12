{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monoid-extras";
          version = "0.4.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Various extra monoid-related definitions and utilities";
        description = "Various extra monoid-related definitions and utilities,\nsuch as monoid actions, monoid coproducts, semi-direct\nproducts, \\\"deletable\\\" monoids, \\\"split\\\" monoids,\nand \\\"cut\\\" monoids.";
        buildType = "Simple";
      };
      components = {
        "monoid-extras" = {
          depends  = [
            hsPkgs.base
            hsPkgs.groups
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
        benchmarks = {
          "semi-direct-product" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.monoid-extras
            ];
          };
        };
      };
    }