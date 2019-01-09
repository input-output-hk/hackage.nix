{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "juicy-draw"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/juicy-draw#readme";
      url = "";
      synopsis = "Draw and fill lines, rectangles and polygons";
      description = "This package provides 2D primitives for drawing/filling simple 2D shapes directly onto a JuicyPixels mutable image";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.JuicyPixels)
          (hsPkgs.base)
          (hsPkgs.numeric-extras)
          (hsPkgs.primitive)
          ];
        };
      exes = {
        "juicy-draw-demo" = {
          depends = [ (hsPkgs.JuicyPixels) (hsPkgs.base) (hsPkgs.juicy-draw) ];
          };
        };
      };
    }