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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "SFML"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jeannekamikaze@gmail.com";
      author = "Marc Sunet";
      homepage = "https://github.com/jeannekamikaze/SFML";
      url = "";
      synopsis = "SFML bindings";
      description = "Low level bindings for SFML 2.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."csfml-window" or (errorHandler.sysDepError "csfml-window"))
          (pkgs."csfml-system" or (errorHandler.sysDepError "csfml-system"))
          (pkgs."csfml-graphics" or (errorHandler.sysDepError "csfml-graphics"))
          (pkgs."csfml-network" or (errorHandler.sysDepError "csfml-network"))
          (pkgs."csfml-audio" or (errorHandler.sysDepError "csfml-audio"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      };
    }