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
      identifier = { name = "nlp-scores-scripts"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/lingo";
      url = "";
      synopsis = "NLP scoring command-line programs";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nlp-scores" or (errorHandler.buildDepError "nlp-scores"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "mean" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nlp-scores" or (errorHandler.buildDepError "nlp-scores"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }