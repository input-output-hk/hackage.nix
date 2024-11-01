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
      identifier = { name = "versions"; version = "3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "";
      url = "";
      synopsis = "Types and parsers for software version numbers.";
      description = "A library for parsing and comparing software version numbers.\nWe like to give version numbers to our software in a myriad of\nways. Some ways follow strict guidelines for incrementing and comparison.\nSome follow conventional wisdom and are generally self-consistent.\nSome are just plain asinine. This library provides a means of parsing\nand comparing /any/ style of versioning, be it a nice Semantic Version\nlike this:\n\n> 1.2.3-r1+git123\n\n...or a monstrosity like this:\n\n> 2:10.2+0.0093r3+1-1\n\nPlease switch to <http://semver.org Semantic Versioning> if you\naren't currently using it. It provides consistency in version\nincrementing and has the best constraints on comparisons.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
        ];
        buildable = true;
      };
      tests = {
        "versions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          ];
          buildable = true;
        };
      };
    };
  }