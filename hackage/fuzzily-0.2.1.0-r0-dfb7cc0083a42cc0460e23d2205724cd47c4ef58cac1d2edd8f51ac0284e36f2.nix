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
      specVersion = "1.12";
      identifier = { name = "fuzzily"; version = "0.2.1.0"; };
      license = "ISC";
      copyright = "Adrian Sieber";
      maintainer = "mail@adriansieber.com";
      author = "Adrian Sieber";
      homepage = "https://github.com/ad-si/Fuzzily";
      url = "";
      synopsis = "Filters a list based on a fuzzy string search";
      description = "Fuzzily is a library that filters a list based on a fuzzy string search.\nUses 'TextualMonoid' to be able to run on different types of strings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
        ];
        buildable = true;
      };
      tests = {
        "fuzzily-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fuzzily" or (errorHandler.buildDepError "fuzzily"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
          buildable = true;
        };
      };
    };
  }