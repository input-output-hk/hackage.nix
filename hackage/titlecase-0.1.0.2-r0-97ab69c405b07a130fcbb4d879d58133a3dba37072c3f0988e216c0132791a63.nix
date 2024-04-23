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
      identifier = { name = "titlecase"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Nikita Karetnikov";
      maintainer = "nikita@karetnikov.org";
      author = "Nikita Karetnikov";
      homepage = "https://github.com/nkaretnikov/titlecase";
      url = "";
      synopsis = "Convert English words to title case";
      description = "Capitalize all English words except articles (a, an, the),\ncoordinating conjunctions (for, and, nor, but, or, yet, so), and\nprepositions (unless they begin or end the title).  The\nprepositions are taken from this list:\n<https://en.wikipedia.org/wiki/List_of_English_prepositions>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "titlecase" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."titlecase" or (errorHandler.buildDepError "titlecase"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."titlecase" or (errorHandler.buildDepError "titlecase"))
          ];
          buildable = true;
        };
      };
    };
  }