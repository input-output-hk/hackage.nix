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
      identifier = { name = "delta-h"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupala and Afra Alishahi";
      homepage = "https://bitbucket.org/gchrupala/delta-h";
      url = "";
      synopsis = "Online entropy-based model of lexical category acquisition.";
      description = "Implementation of the model described in Grzegorz Chrupała\nand Afra Alishahi, Online Entropy-based Model of\nLexical Category Acquisition, CoNLL 2010\n<http://www.lsv.uni-saarland.de/personalPages/gchrupala/papers/conll-2010.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."nlp-scores" or (errorHandler.buildDepError "nlp-scores"))
          (hsPkgs."monad-atom" or (errorHandler.buildDepError "monad-atom"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "delta-h" = {
          depends = [
            (hsPkgs."nlp-scores" or (errorHandler.buildDepError "nlp-scores"))
            (hsPkgs."monad-atom" or (errorHandler.buildDepError "monad-atom"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }