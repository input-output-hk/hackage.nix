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
      identifier = { name = "geolite-csv"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade";
      url = "";
      synopsis = "Geolite CSV Parser";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colonnade" or (errorHandler.buildDepError "colonnade"))
          (hsPkgs."siphon" or (errorHandler.buildDepError "siphon"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
        buildable = true;
        };
      tests = {
        "geolite-csv-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."geolite-csv" or (errorHandler.buildDepError "geolite-csv"))
            (hsPkgs."siphon" or (errorHandler.buildDepError "siphon"))
            (hsPkgs."colonnade" or (errorHandler.buildDepError "colonnade"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }