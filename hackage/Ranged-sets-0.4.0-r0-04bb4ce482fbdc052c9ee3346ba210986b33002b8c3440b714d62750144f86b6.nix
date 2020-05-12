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
      specVersion = "1.24";
      identifier = { name = "Ranged-sets"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Johnson, 2005, 2006, 2007, 2008, 2019";
      maintainer = "paul@cogito.org.uk";
      author = "Paul Johnson";
      homepage = "https://github.com/PaulJohnson/Ranged-sets";
      url = "";
      synopsis = "Ranged sets for Haskell";
      description = "A ranged set is an ordered list of ranges.  This allows sets such as all reals x such that:\n\n> (0.25 < x <= 0.75 or 1.4 <= x < 2.3 or 4.5 < x)\n\nAlternatively you can have all strings s such that:\n\n>    (\"F\" <= s < \"G\")";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }