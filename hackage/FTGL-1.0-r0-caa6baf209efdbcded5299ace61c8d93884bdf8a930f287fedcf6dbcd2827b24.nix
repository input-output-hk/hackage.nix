{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "FTGL"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "";
      url = "";
      synopsis = "Portable TrueType font rendering for OpenGL using the Freetype2 library";
      description = "A Haskell binding for the portable TrueType to OpenGL font rendering library FTGL.\nThis package provides OpenGL with polygonal, texture mapped, and extruded fonts using\nFreetype2 and any truetype font.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [ (pkgs."ftgl" or ((hsPkgs.pkgs-errors).sysDepError "ftgl")) ];
        buildable = true;
        };
      };
    }