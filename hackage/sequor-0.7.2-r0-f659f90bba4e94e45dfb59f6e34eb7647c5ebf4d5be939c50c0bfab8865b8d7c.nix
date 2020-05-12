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
      specVersion = "1.2";
      identifier = { name = "sequor"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grzegorz.chrupala@gmail.com";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/sequor";
      url = "";
      synopsis = "A sequence labeler based on Collins's sequence perceptron.";
      description = "A sequence labeler based on Collins's sequence perceptron.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."nlp-scores" or (errorHandler.buildDepError "nlp-scores"))
          ];
        buildable = true;
        };
      exes = {
        "sequor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."nlp-scores" or (errorHandler.buildDepError "nlp-scores"))
            ];
          buildable = true;
          };
        "augment" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }