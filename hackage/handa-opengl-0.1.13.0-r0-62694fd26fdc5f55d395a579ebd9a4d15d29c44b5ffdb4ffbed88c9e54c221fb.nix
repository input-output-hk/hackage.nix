{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "handa-opengl"; version = "0.1.13.0"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/handa-opengl";
      url = "https://bitbucket.org/bwbush/handa-opengl/downloads/handa-opengl-0.1.13.0.tar.gz";
      synopsis = "Utility functions for OpenGL and GLUT";
      description = "This is a collection of miscellaneous utility functions for OpenGL and GLUT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."opengl-dlp-stereo" or ((hsPkgs.pkgs-errors).buildDepError "opengl-dlp-stereo"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        buildable = true;
        };
      };
    }