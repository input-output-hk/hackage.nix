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
      identifier = { name = "lexer-applicative"; version = "2.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "https://github.com/feuerbach/lexer-applicative";
      url = "";
      synopsis = "Simple lexer based on applicative regular expressions";
      description = "Simple lexer based on applicative regular expressions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."lexer-applicative" or (errorHandler.buildDepError "lexer-applicative"))
            (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }