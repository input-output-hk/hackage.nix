{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gloss-juicy"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2013-2015 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "http://github.com/alpmestan/gloss-juicy";
      url = "";
      synopsis = "Load any image supported by Juicy.Pixels in your gloss application";
      description = "Lets you convert any image supported by Juicy.Pixels in a gloss application by converting to gloss' Bitmap representation.\n\nVersion 0.1.2 just enabled caching (from a frame to the next, and so on) of the images you load, so that they are not recomputed for each frame. Credits go to Jonathan Daugherty for the patch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "gloss-juicy-viewer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }