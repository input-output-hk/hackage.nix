{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JuicyPixels-canvas";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@eax.me";
        author = "Alexander Alexeev";
        homepage = "http://eax.me/";
        url = "";
        synopsis = "Functions for drawing lines, squares and so on pixel by pixel";
        description = "Functions for drawing lines, squares and so on pixel by pixel";
        buildType = "Simple";
      };
      components = {
        JuicyPixels-canvas = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.JuicyPixels
          ];
        };
      };
    }