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
      identifier = { name = "process-streaming"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Streaming interface to system processes. ";
      description = "Concurrent, streaming access to the input and outputs of system processes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process-streaming" or (errorHandler.buildDepError "process-streaming"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
            (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }