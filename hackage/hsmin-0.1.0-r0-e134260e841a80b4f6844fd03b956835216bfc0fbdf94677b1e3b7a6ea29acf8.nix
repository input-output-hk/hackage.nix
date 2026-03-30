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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hsmin"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "";
      url = "";
      synopsis = "Haskell source code minifier for LLM token reduction";
      description = "A Haskell source code minifier that uses ghc-lib-parser to parse\nHaskell source and produce a compact output with comments and\nwhitespace stripped, layout converted to explicit brace syntax,\nand other size reductions. Useful for reducing LLM token usage\nwhen including Haskell source in prompts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
        ];
        buildable = true;
      };
      exes = {
        "hsmin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsmin" or (errorHandler.buildDepError "hsmin"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsmin" or (errorHandler.buildDepError "hsmin"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }