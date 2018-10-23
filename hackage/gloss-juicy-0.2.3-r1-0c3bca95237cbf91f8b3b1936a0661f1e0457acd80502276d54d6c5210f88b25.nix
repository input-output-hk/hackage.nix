{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gloss-juicy";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "2013-2015 Alp Mestanogullari";
      maintainer = "Hugo Pacheco <hpacheco@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "http://github.com/hpacheco/gloss-juicy";
      url = "";
      synopsis = "Load any image supported by Juicy.Pixels in your gloss application";
      description = "Lets you convert any image supported by Juicy.Pixels in a gloss application by converting to gloss' Bitmap representation.\n\nVersion 0.1.2 just enabled caching (from a frame to the next, and so on) of the images you load, so that they are not recomputed for each frame. Credits go to Jonathan Daugherty for the patch.";
      buildType = "Simple";
    };
    components = {
      "gloss-juicy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bmp)
          (hsPkgs.gloss)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "gloss-juicy-viewer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bmp)
            (hsPkgs.gloss)
            (hsPkgs.JuicyPixels)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }