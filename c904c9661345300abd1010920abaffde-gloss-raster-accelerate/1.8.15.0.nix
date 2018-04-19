{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cuda = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gloss-raster-accelerate";
          version = "1.8.15.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tmcdonell@cse.unsw.edu.au";
        author = "Trevor L. McDonell";
        homepage = "";
        url = "";
        synopsis = "Parallel rendering of raster images using Accelerate";
        description = "Parallel rendering of raster images using Accelerate";
        buildType = "Simple";
      };
      components = {
        gloss-raster-accelerate = {
          depends  = [
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.gloss
            hsPkgs.gloss-accelerate
          ] ++ pkgs.lib.optional _flags.cuda hsPkgs.accelerate-cuda;
        };
      };
    }