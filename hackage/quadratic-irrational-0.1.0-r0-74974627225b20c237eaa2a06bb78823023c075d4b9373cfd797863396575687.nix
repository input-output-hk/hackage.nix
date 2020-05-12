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
      identifier = { name = "quadratic-irrational"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright © 2014 Johan Kiviniemi";
      maintainer = "Andrew Lelechenko andrew dot lelechenko at gmail dot com";
      author = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      homepage = "https://github.com/ion1/quadratic-irrational";
      url = "";
      synopsis = "An implementation of quadratic irrationals";
      description = "A library for exact computation with\n<http://en.wikipedia.org/wiki/Quadratic_irrational quadratic irrationals>\nwith support for exact conversion from and to\n<http://en.wikipedia.org/wiki/Periodic_continued_fraction (potentially periodic) simple continued fractions>.\n\nA quadratic irrational is a number that can be expressed in the form\n\n> (a + b √c) / d\n\nwhere @a@, @b@ and @d@ are integers and @c@ is a square-free natural number.\n\nSome examples of such numbers are\n\n* @7/2@,\n\n* @√2@,\n\n* @(1 + √5)\\/2@\n(<http://en.wikipedia.org/wiki/Golden_ratio the golden ratio>),\n\n* solutions to quadratic equations with rational constants – the\n<http://en.wikipedia.org/wiki/Quadratic_formula quadratic formula> has a\nfamiliar shape.\n\nA simple continued fraction is a number expressed in the form\n\n> a + 1/(b + 1/(c + 1/(d + 1/(e + …))))\n\nor alternatively written as\n\n> [a; b, c, d, e, …]\n\nwhere @a@ is an integer and @b@, @c@, @d@, @e@, … are positive integers.\n\nEvery finite SCF represents a rational number and every infinite, periodic\nSCF represents a quadratic irrational.\n\n> 3.5      = [3; 2]\n> (1+√5)/2 = [1; 1, 1, 1, …]\n> √2       = [1; 2, 2, 2, …]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "tasty-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quadratic-irrational" or (errorHandler.buildDepError "quadratic-irrational"))
            (hsPkgs."numbers" or (errorHandler.buildDepError "numbers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."numbers" or (errorHandler.buildDepError "numbers"))
            (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
            ];
          buildable = true;
          };
        };
      };
    }