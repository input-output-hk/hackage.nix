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
      identifier = { name = "haskell-conll"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2019 Michal Gajda,\nSergey Bushnyak,\nAlejandro Duran-Pallares";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Michal Gajda,\nSergey Bushnyak,\nAlejandro Duran-Pallares";
      homepage = "https://github.com/sigrlami/haskell-conll#readme";
      url = "";
      synopsis = "Core Types for NLP";
      description = "Provides core types to work with CoreNLP, SyntaxNet. Handling CoNLL format and Syntax Trees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }