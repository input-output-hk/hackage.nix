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
    flags = { optparse-applicative_ge_0_18 = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "horizontal-rule"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2019-2024 Travis Cardwell";
      maintainer = "Travis Cardwell <travis.cardwell@extrema.is>";
      author = "Travis Cardwell <travis.cardwell@extrema.is>";
      homepage = "https://github.com/ExtremaIS/hr-haskell#readme";
      url = "";
      synopsis = "horizontal rule for the terminal";
      description = "This package provides a utility for displaying a horizontal rule in a\nterminal.  Please see the README on GitHub at\n<https://github.com/ExtremaIS/hr-haskell#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "hr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."horizontal-rule" or (errorHandler.buildDepError "horizontal-rule"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if flags.optparse-applicative_ge_0_18
            then [
              (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
              (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ]
            else [
              (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
              (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ]);
          buildable = true;
        };
      };
      tests = {
        "horizontal-rule-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."horizontal-rule" or (errorHandler.buildDepError "horizontal-rule"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }