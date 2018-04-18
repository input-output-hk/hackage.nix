{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "primitive";
          version = "0.6.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Roman Leshchinskiy 2009-2012";
        maintainer = "libraries@haskell.org";
        author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        homepage = "https://github.com/haskell/primitive";
        url = "";
        synopsis = "Primitive memory-related operations";
        description = "This package provides various primitive memory-related operations.";
        buildType = "Simple";
      };
      components = {
        primitive = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.primitive
            ];
          };
        };
      };
    }