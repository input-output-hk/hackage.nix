{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      mmap = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JuicyPixels";
          version = "3.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vincent.berthoux@gmail.com";
        author = "Vincent Berthoux";
        homepage = "https://github.com/Twinside/Juicy.Pixels";
        url = "";
        synopsis = "Picture loading/serialization (in png, jpeg, bitmap, gif, tiff and radiance)";
        description = "<<docimages/juicy.png>>\n\nThis library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.";
        buildType = "Simple";
      };
      components = {
        JuicyPixels = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.deepseq
            hsPkgs.containers
          ] ++ pkgs.lib.optional _flags.mmap hsPkgs.mmap;
        };
      };
    }