{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monoid-extras";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Various extra monoid-related definitions and utilities";
        description = "Various extra monoid-related definitions and utilities,\nsuch as monoid actions, monoid coproducts, \"deletable\"\nmonoids, and \"split\" monoids.";
        buildType = "Simple";
      };
      components = {
        monoid-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
          ];
        };
      };
    }