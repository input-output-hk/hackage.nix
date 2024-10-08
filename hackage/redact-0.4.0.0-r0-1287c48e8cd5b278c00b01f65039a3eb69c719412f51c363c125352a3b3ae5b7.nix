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
      identifier = { name = "redact"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020-2022 Travis Cardwell";
      maintainer = "Travis Cardwell <travis.cardwell@extrema.is>";
      author = "Travis Cardwell <travis.cardwell@extrema.is>";
      homepage = "https://github.com/ExtremaIS/redact-haskell#readme";
      url = "";
      synopsis = "hide secret text on the terminal";
      description = "This package provides a utility for redacting secret text on the terminal.\nPlease see the README on GitHub at\n<https://github.com/ExtremaIS/redact-haskell#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "redact" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."redact" or (errorHandler.buildDepError "redact"))
          ];
          buildable = true;
        };
      };
      tests = {
        "redact-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."redact" or (errorHandler.buildDepError "redact"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.8.1") [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."explainable-predicates" or (errorHandler.buildDepError "explainable-predicates"))
            (hsPkgs."HMock" or (errorHandler.buildDepError "HMock"))
          ];
          buildable = true;
        };
      };
    };
  }