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
      specVersion = "2.2";
      identifier = { name = "versions"; version = "3.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://gitlab.com/fosskers/versions";
      url = "";
      synopsis = "Types and parsers for software version numbers.";
      description = "A library for parsing and comparing software version numbers. We like to give\nversion numbers to our software in a myriad of ways. Some ways follow strict\nguidelines for incrementing and comparison. Some follow conventional wisdom\nand are generally self-consistent. Some are just plain asinine. This library\nprovides a means of parsing and comparing /any/ style of versioning, be it a\nnice Semantic Version like this:\n\n> 1.2.3-r1+git123\n\n...or a monstrosity like this:\n\n> 2:10.2+0.0093r3+1-1\n\nPlease switch to <http://semver.org Semantic Versioning> if you aren't\ncurrently using it. It provides consistency in version incrementing and has\nthe best constraints on comparisons.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "versions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            ];
          buildable = true;
          };
        };
      };
    }