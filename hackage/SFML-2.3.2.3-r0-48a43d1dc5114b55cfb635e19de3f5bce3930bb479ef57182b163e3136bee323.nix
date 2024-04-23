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
    flags = { officialcsfmlforwindows = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "SFML"; version = "2.3.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "jeannekamikaze@gmail.com";
      author = "Marc Sunet";
      homepage = "https://github.com/jeannekamikaze/SFML";
      url = "";
      synopsis = "SFML bindings";
      description = "Low level bindings for SFML 2.3.2.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = if system.isWindows
          then [
            (pkgs."csfml-window" or (errorHandler.sysDepError "csfml-window"))
            (pkgs."csfml-system" or (errorHandler.sysDepError "csfml-system"))
            (pkgs."csfml-graphics" or (errorHandler.sysDepError "csfml-graphics"))
            (pkgs."csfml-network" or (errorHandler.sysDepError "csfml-network"))
            (pkgs."csfml-audio" or (errorHandler.sysDepError "csfml-audio"))
          ]
          else [
            (pkgs."csfml-window" or (errorHandler.sysDepError "csfml-window"))
            (pkgs."csfml-system" or (errorHandler.sysDepError "csfml-system"))
            (pkgs."csfml-graphics" or (errorHandler.sysDepError "csfml-graphics"))
            (pkgs."csfml-network" or (errorHandler.sysDepError "csfml-network"))
            (pkgs."csfml-audio" or (errorHandler.sysDepError "csfml-audio"))
            (pkgs."sfml-window" or (errorHandler.sysDepError "sfml-window"))
            (pkgs."sfml-system" or (errorHandler.sysDepError "sfml-system"))
            (pkgs."sfml-graphics" or (errorHandler.sysDepError "sfml-graphics"))
            (pkgs."sfml-network" or (errorHandler.sysDepError "sfml-network"))
            (pkgs."sfml-audio" or (errorHandler.sysDepError "sfml-audio"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }