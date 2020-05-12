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
      identifier = { name = "JsonGrammar"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2010-2014 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "https://github.com/MedeaMelana/JsonGrammar2";
      url = "";
      synopsis = "Combinators for bidirectional JSON parsing";
      description = "Combinators for bidirectional JSON parsing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."language-typescript" or (errorHandler.buildDepError "language-typescript"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stack-prism" or (errorHandler.buildDepError "stack-prism"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."JsonGrammar" or (errorHandler.buildDepError "JsonGrammar"))
            (hsPkgs."stack-prism" or (errorHandler.buildDepError "stack-prism"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."language-typescript" or (errorHandler.buildDepError "language-typescript"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }