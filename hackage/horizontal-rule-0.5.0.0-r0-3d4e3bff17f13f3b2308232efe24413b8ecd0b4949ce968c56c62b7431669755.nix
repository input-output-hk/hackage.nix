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
    flags = { write-hie = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "horizontal-rule"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2019-2022 Travis Cardwell";
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
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."horizontal-rule" or (errorHandler.buildDepError "horizontal-rule"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
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
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6.1") (hsPkgs."HMock" or (errorHandler.buildDepError "HMock"));
          buildable = true;
          };
        };
      };
    }