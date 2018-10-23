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
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "http://github.com/alpmestan/gloss-juicy";
      url = "";
      synopsis = "Load any image supported by Juicy.Pixels in your gloss application";
      description = "Lets you convert any image supported by Juicy.Pixels in a gloss application by converting to gloss' Bitmap representation.";
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