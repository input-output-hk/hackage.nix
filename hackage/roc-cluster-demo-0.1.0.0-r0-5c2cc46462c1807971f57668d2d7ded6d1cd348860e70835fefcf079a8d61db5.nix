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
      identifier = { name = "roc-cluster-demo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/ncrashed/roc-cluster-demo#readme";
      url = "";
      synopsis = "Gloss interactive demo for roc-cluster package";
      description = "Demo for displaying operation of ROC online clustering.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roc-cluster-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."roc-cluster" or (errorHandler.buildDepError "roc-cluster"))
          ];
          buildable = true;
        };
      };
    };
  }