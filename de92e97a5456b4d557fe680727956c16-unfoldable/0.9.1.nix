{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unfoldable";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/unfoldable";
        url = "";
        synopsis = "Class of data structures that can be unfolded.";
        description = "Just as there's a Foldable class, there should also be an Unfoldable class.\n\nThis package provides one. Example unfolds are:\n\n* Random values\n\n* Enumeration of all values (depth-first or breadth-first)\n\n* Convert from a list\n\nSome examples can be found in the examples directory.";
        buildType = "Simple";
      };
      components = {
        unfoldable = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.random
            hsPkgs.QuickCheck
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }