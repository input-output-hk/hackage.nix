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
      identifier = { name = "chuchu"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2012 Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      maintainer = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      author = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>, Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "http://github.com/marcotmarcot/chuchu";
      url = "";
      synopsis = "Behaviour Driven Development like Cucumber for Haskell";
      description = "Chuchu is a system similar to Ruby's Cucumber for Behaviour Driven\nDevelopment.  It works with a language similar to Cucumber's Gherkin, which is\nparsed using package abacate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."abacate" or (errorHandler.buildDepError "abacate"))
          ];
        buildable = true;
        };
      tests = {
        "environment" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."chuchu" or (errorHandler.buildDepError "chuchu"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "calculator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."chuchu" or (errorHandler.buildDepError "chuchu"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "prefix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."chuchu" or (errorHandler.buildDepError "chuchu"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "multiple_scenarios" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."chuchu" or (errorHandler.buildDepError "chuchu"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "background_and_multiple_scenarios" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."chuchu" or (errorHandler.buildDepError "chuchu"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }