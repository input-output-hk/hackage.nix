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
      specVersion = "1.12";
      identifier = { name = "Shpadoinkle"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@protonmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A programming model for declarative, high performance user interface.";
      description = "Shpadoinkle is a programming model for user interface development. It supports flexible, simple, declarative code by modeling user interface interactions as Coalgebras.\nThis package implements the bare-bones core abstraction. By performing little work shpadoinkle is trivially high performance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"));
        buildable = true;
        };
      };
    }