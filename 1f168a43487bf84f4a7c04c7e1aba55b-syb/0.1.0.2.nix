{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "syb";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Scrap Your Boilerplate";
        description = "This package contains the generics system described in the\n/Scrap Your Boilerplate/ papers (see <http://www.cs.vu.nl/boilerplate/>).\nIt defines the @Data@ class of types permitting folding and unfolding\nof constructor applications, instances of this class for primitive\ntypes, and a variety of traversals.";
        buildType = "Simple";
      };
      components = {
        "syb" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }