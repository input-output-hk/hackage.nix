{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JuicyPixels-scale-dct";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/JuicyPixels-scale-dct#readme";
        url = "";
        synopsis = "Scale JuicyPixels images with DCT";
        description = "Scale JuicyPixels Images with DCT";
        buildType = "Simple";
      };
      components = {
        JuicyPixels-scale-dct = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.JuicyPixels
            hsPkgs.fft
            hsPkgs.carray
          ];
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.JuicyPixels
              hsPkgs.fft
              hsPkgs.carray
              hsPkgs.base
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-scale-dct
              hsPkgs.JuicyPixels-util
              hsPkgs.time
            ];
          };
        };
      };
    }