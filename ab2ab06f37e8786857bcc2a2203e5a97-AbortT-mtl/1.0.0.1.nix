{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AbortT-mtl";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
        author = "Gregory Crosswhite";
        homepage = "http://github.com/gcross/AbortT-mtl";
        url = "";
        synopsis = "mtl instances for the AbortT monad transformer";
        description = "This module provides instances for the mtl classes for AbortT.";
        buildType = "Simple";
      };
      components = {
        AbortT-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.AbortT-transformers
            hsPkgs.mtl
          ];
        };
      };
    }