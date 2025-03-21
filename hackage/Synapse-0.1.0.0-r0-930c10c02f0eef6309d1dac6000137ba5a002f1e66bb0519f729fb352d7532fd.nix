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
      specVersion = "3.0";
      identifier = { name = "Synapse"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "odmamontov@gmail.com";
      author = "JktuJQ";
      homepage = "https://github.com/JktuJQ/Synapse";
      url = "";
      synopsis = "Synapse is a machine learning library written in pure Haskell.";
      description = "Synapse is a machine learning library written in pure Haskell, that makes creating and training neural networks an easy job.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."terminal-progress-bar" or (errorHandler.buildDepError "terminal-progress-bar"))
        ];
        buildable = true;
      };
      tests = {
        "Synapse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Synapse" or (errorHandler.buildDepError "Synapse"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."easyplot" or (errorHandler.buildDepError "easyplot"))
          ];
          buildable = true;
        };
      };
    };
  }