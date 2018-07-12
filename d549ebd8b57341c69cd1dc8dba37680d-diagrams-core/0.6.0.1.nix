{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-core";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Core libraries for diagrams EDSL";
        description = "The core modules underlying diagrams,\nan embedded domain-specific language\nfor compositional, declarative drawing.";
        buildType = "Simple";
      };
      components = {
        "diagrams-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.vector-space
            hsPkgs.vector-space-points
            hsPkgs.MemoTrie
            hsPkgs.newtype
            hsPkgs.monoid-extras
            hsPkgs.dual-tree
          ];
        };
      };
    }