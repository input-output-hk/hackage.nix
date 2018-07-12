{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "memorypool";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016 Lennart Spitzner";
        maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
        author = "Lennart Spitzner";
        homepage = "https://github.com/lspitzner/memorypool";
        url = "";
        synopsis = "basic memory pool outside of haskell heap/GC";
        description = "See Readme";
        buildType = "Simple";
      };
      components = {
        "memorypool" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.unsafe
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.void;
        };
      };
    }