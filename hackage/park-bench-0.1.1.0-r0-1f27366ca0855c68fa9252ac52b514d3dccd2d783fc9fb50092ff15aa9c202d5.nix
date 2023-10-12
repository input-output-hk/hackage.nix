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
      identifier = { name = "park-bench"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020-2023 Mitchell Rosen, Travis Staton";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Rosen, Travis Staton";
      homepage = "https://github.com/awkward-squad/park-bench";
      url = "";
      synopsis = "A quick-and-dirty, low-friction benchmark tool with immediate feedback";
      description = "A quick-and-dirty, low-friction benchmark tool with immediate feedback.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }