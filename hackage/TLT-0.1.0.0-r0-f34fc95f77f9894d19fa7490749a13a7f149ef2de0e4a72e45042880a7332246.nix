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
      identifier = { name = "TLT"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "2022 John Maraist";
      maintainer = "haskell-tlt@maraist.org";
      author = "John Maraist";
      homepage = "https://github.com/jphmrst/TLT#readme";
      url = "";
      synopsis = "Testing in monads and transformers without explicit specs";
      description = "A small unit test system oriented with an emphasis on examining intermediate results of computations in monad transformers.  The Test.TLT Haddock page is the main piece of documentation; or see also the GitHub repository <https://github.com/jphmrst/TLT/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "TLT-exe" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."TLT" or (errorHandler.buildDepError "TLT"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "TLT-test-fail" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."TLT" or (errorHandler.buildDepError "TLT"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }