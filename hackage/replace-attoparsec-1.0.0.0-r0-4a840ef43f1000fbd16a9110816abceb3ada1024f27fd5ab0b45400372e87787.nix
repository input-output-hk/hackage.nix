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
      specVersion = "1.18";
      identifier = { name = "replace-attoparsec"; version = "1.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "jamesbrock@gmail.com";
      author = "James Brock";
      homepage = "https://github.com/jamesdbrock/replace-attoparsec";
      url = "";
      synopsis = "Stream editing with Attoparsec";
      description = "Stream editing and find-and-replace with Attoparsec monadic parser\ncombinators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-bytestring" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."replace-attoparsec" or (errorHandler.buildDepError "replace-attoparsec"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            ];
          buildable = true;
          };
        "test-text" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."replace-attoparsec" or (errorHandler.buildDepError "replace-attoparsec"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."replace-attoparsec" or (errorHandler.buildDepError "replace-attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }