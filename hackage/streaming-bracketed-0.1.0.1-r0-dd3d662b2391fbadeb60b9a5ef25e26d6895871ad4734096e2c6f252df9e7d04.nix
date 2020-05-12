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
      specVersion = "2";
      identifier = { name = "streaming-bracketed"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "daniel";
      homepage = "";
      url = "";
      synopsis = "A resource management decorator for \"streaming\".        ";
      description = "This package provides a decorator for the Stream type from\n\"streaming\", that lets you perform bracket-like\noperations that allocate and deallocate resources used\nby the stream.\n\nBy carefully managing the operations that are lifted to\nthe decorated streams, we can ensure that finalizers are\npromptly called even with operations like \"take\", which do\nnot consume the whole stream.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."streaming-bracketed" or (errorHandler.buildDepError "streaming-bracketed"))
            ];
          buildable = true;
          };
        };
      };
    }