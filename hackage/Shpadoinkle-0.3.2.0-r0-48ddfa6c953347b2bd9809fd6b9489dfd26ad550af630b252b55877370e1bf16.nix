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
      specVersion = "2.2";
      identifier = { name = "Shpadoinkle"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "isaac.shapira@platonic.systems";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A programming model for declarative, high performance user interface.";
      description = "Shpadoinkle is an abstract frontend programming model, with one-way data flow,\nand a single source of truth. This module provides a parsimonious implementation\nof Shpadoinkle with few implementation details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }