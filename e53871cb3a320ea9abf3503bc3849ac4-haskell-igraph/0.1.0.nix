{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      graphics = false;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "haskell-igraph";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2016 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "Imcomplete igraph bindings";
        description = "This is an attempt to create a complete bindings for the\nigraph<\"http://igraph.org/c/\"> library. Related work:\nhttps://hackage.haskell.org/package/igraph.";
        buildType = "Simple";
      };
      components = {
        haskell-igraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.colour
            hsPkgs.primitive
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.hxt
            hsPkgs.split
            hsPkgs.data-default-class
          ] ++ pkgs.lib.optionals _flags.graphics [
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-cairo
          ];
          libs = [ pkgs.igraph ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-igraph
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.tasty-hunit
              hsPkgs.random
            ];
          };
        };
      };
    }