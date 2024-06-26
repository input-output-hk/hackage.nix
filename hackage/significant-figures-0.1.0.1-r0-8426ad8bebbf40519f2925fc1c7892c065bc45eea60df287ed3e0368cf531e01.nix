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
      specVersion = "2.4";
      identifier = { name = "significant-figures"; version = "0.1.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "michaellan202@gmail.com";
      author = "Michael Lan";
      homepage = "";
      url = "";
      synopsis = "Calculate expressions involving significant figures.";
      description = "This library provides a module \"Data.SigFig\" that helps with the parsing and evaluation of expressions involving significant figures. Significant figures are a method, often used in chemistry, of assessing and controlling the precision/uncertainty from measured values in calculations.\n\nExpressions with significant figures are not easily calculable with a normal calculator, since they require intermediate rounding based on certain rules. This library takes care of intermediate rounding during evaluation and provides functions to parse text into expressions. Parsing supports integer, float, and scientific notation (via E notation), constant terms (terms with effectively infinite significant figures), common operations, parentheses, and an additional small set of functions. Expressions may also be constructed via helper functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
        ];
        buildable = true;
      };
      exes = {
        "significant-figures-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."significant-figures" or (errorHandler.buildDepError "significant-figures"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          buildable = true;
        };
      };
      tests = {
        "significant-figures-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
            (hsPkgs."significant-figures" or (errorHandler.buildDepError "significant-figures"))
          ];
          buildable = true;
        };
      };
    };
  }