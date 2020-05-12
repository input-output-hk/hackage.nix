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
      identifier = { name = "tokenize"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grzegorz.chrupala@gmail.com";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/lingo/overview";
      url = "";
      synopsis = "Simple tokenizer for English text.";
      description = "Simple tokenizer for English text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }