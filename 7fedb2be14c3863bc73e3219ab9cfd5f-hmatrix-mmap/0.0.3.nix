{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmatrix-mmap";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel Peebles 2010, (c) Alan Falloon 2011";
        maintainer = "Alan Falloon <alan.falloon@gmail.com>";
        author = "Daniel Peebles <pumpkingod@gmail.com>, Alan Falloon <alan.falloon@gmail.com>";
        homepage = "http://github.com/alanfalloon/hmatrix-mmap";
        url = "";
        synopsis = "Memory map Vector from disk into memory efficiently";
        description = "Memory map Data.Packed.Vector.Vector from disk into memory efficiently.";
        buildType = "Simple";
      };
      components = {
        "hmatrix-mmap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmap
            hsPkgs.hmatrix
          ];
        };
      };
    }