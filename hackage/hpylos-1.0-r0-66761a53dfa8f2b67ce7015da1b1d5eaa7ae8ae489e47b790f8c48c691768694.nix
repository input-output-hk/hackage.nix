{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "hpylos"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008 Bartosz Wójcik";
      maintainer = "Bartosz Wójcik <bartek@sudety.it>";
      author = "Bartosz Wójcik <bartek@sudety.it>";
      homepage = "http://sourceforge.net/projects/hpylos/";
      url = "";
      synopsis = "AI of Pylos game with GLUT interface.";
      description = "Pylos is 2 persons turn strategy board game described here: <http://www.boardgamegeek.com/game/1419>.\nhpylos is functional example of AI of pylos with 3D graphic.\nYou can play vs. one of few algorithms that can be customized.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpylos" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."EEConfig" or ((hsPkgs.pkgs-errors).buildDepError "EEConfig"))
            ];
          buildable = true;
          };
        };
      };
    }