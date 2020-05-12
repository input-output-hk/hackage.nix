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
      specVersion = "1.8";
      identifier = { name = "abacate"; version = "0.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2012 Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      maintainer = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      author = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      homepage = "http://github.com/marcotmarcot/abacate";
      url = "";
      synopsis = "Parser for a language similar to Cucumber's Gherkin";
      description = "Gherkin is the language used by the Cucumber system for Behaviour Driven\nDevelopment.  This package contains a parser to it, based on its BNF with\nminor changes.  For more information on Cucumber, check <http://cukes.info>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "abacate-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."abacate" or (errorHandler.buildDepError "abacate"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }