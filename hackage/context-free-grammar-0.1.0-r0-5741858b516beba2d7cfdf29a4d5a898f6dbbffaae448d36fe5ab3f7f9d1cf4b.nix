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
      identifier = { name = "context-free-grammar"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Eric Nedervold";
      maintainer = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      author = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      homepage = "http://github.com/nedervold/context-free-grammar";
      url = "";
      synopsis = "Basic algorithms on context-free grammars";
      description = "Basic algorithms on context-free grammars:\n\n* augmenting a grammar\n\n* calculating nullability\n\n* calculating reachability\n\n* calculating productivity\n\n* calculating first sets\n\n* calculating follow sets\n\n* calculating predict sets\n\nYou may define your context-free grammar textually using 'parse'\nor with the quasiquoter 'bnf' (both in \"Data.Cfg.Bnf\"), or you may\nuse any data structure you like after making it an instance of\n'Cfg' (found in \"Data.Cfg.Cfg\").\n\nTesting is very thin in this version; basically just\nsanity-checking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."control-monad-omega" or (errorHandler.buildDepError "control-monad-omega"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."context-free-grammar" or (errorHandler.buildDepError "context-free-grammar"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-properties" or (errorHandler.buildDepError "quickcheck-properties"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }