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
      specVersion = "1.10";
      identifier = { name = "javascript-extras"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/javascript-extras#readme";
      url = "";
      synopsis = "Extra javascript functions when using GHCJS";
      description = "Extra javascript functions when using GHCJS";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or (errorHandler.buildDepError "ghcjs-base-stub"));
        buildable = true;
        };
      exes = {
        "javascript-extras-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."javascript-extras" or (errorHandler.buildDepError "javascript-extras"))
            ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
            ]) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or (errorHandler.buildDepError "ghcjs-base-stub"));
          buildable = true;
          };
        };
      };
    }