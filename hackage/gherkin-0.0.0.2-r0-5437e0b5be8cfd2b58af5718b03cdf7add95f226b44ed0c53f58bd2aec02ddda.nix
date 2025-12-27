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
      identifier = { name = "gherkin"; version = "0.0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2012 Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      maintainer = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      author = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      homepage = "http://github.com/obsidiansystems/gherkin";
      url = "";
      synopsis = "Parser for a language similar to Cucumber's Gherkin";
      description = "Gherkin is the language used by the Cucumber system for Behaviour Driven\nDevelopment.  This package contains a parser to it, based on its BNF with\nminor changes.  For more information on Cucumber, check <http://cukes.info>.\nThis package was formerly called abacate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "gherkin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gherkin" or (errorHandler.buildDepError "gherkin"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }