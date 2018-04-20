{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "bzlib";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006 Duncan Coutts";
        maintainer = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
        author = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
        homepage = "";
        url = "";
        synopsis = "Compression and decompression in the bzip2 format";
        description = "";
        buildType = "Custom";
      };
      components = {
        bzlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.fps
          ];
          libs = [ pkgs.bz2 ];
        };
      };
    }