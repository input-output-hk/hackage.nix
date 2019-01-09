{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "juicy-draw"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/juicy-draw#readme";
      url = "";
      synopsis = "Functions for drawing and filling lines, rectangles and polygons directly onto a mutable image";
      description = "This package provides 2D primitives for drawing/fill simple 2D shapes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.JuicyPixels) (hsPkgs.base) (hsPkgs.primitive) ];
        };
      exes = {
        "juicy-draw-demo" = {
          depends = [ (hsPkgs.JuicyPixels) (hsPkgs.base) (hsPkgs.juicy-draw) ];
          };
        };
      };
    }