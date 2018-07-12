{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      mmap = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JuicyPixels";
          version = "3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vincent.berthoux@gmail.com";
        author = "Vincent Berthoux";
        homepage = "https://github.com/Twinside/Juicy.Pixels";
        url = "";
        synopsis = "Picture loading/serialization (in png, jpeg, bitmap, gif, tiff and radiance)";
        description = "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>\n\nThis library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and read Gif images.";
        buildType = "Simple";
      };
      components = {
        "JuicyPixels" = {
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
          ] ++ pkgs.lib.optional _flags.mmap hsPkgs.mmap;
        };
      };
    }