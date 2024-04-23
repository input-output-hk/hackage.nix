{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { sound = true; pdflaby = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "topkata"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer";
      homepage = "http://home.arcor.de/chr_bauer/topkata.html";
      url = "";
      synopsis = "OpenGL Arcade Game";
      description = "Guide a jumping ball through a maze.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "topkata" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optionals (flags.sound) [
            (hsPkgs."OpenAL" or (errorHandler.buildDepError "OpenAL"))
            (hsPkgs."ALUT" or (errorHandler.buildDepError "ALUT"))
          ];
          buildable = true;
        };
        "pdflaby" = {
          depends = pkgs.lib.optionals (flags.pdflaby) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
          buildable = if flags.pdflaby then true else false;
        };
      };
    };
  }