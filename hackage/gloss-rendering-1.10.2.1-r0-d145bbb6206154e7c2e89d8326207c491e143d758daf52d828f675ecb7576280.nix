{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gloss-rendering"; version = "1.10.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "elise@jabberwocky.eu benl@ouroborus.net";
      author = "Elise Huard";
      homepage = "";
      url = "";
      synopsis = "Gloss picture data types and rendering functions.";
      description = "Gloss picture data types and rendering functions. These functions\ndon't do any window management. If you want gloss to setup your window as\nwell then use the plain @gloss@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
          ];
        buildable = true;
        };
      };
    }