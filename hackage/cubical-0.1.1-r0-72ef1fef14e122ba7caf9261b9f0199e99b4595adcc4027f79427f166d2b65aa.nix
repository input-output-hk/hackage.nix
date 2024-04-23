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
      identifier = { name = "cubical"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mortberg@chalmers.se";
      author = "Cyril Cohen, Thierry Coquand, Simon Huber, Anders Mörtberg";
      homepage = "https://github.com/simhu/cubical";
      url = "";
      synopsis = "Implementation of Univalence in Cubical Sets";
      description = "Cubical implements an experimental simple type checker\nfor type theory with univalence with an evaluator for closed terms.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "cubical" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."BNFC" or (errorHandler.buildDepError "BNFC"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
          buildable = true;
        };
      };
    };
  }