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
      identifier = { name = "batching"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>";
      author = "Andrew Pritchard <awpritchard@gmail.com>";
      homepage = "https://github.com/google/hs-batching#readme";
      url = "";
      synopsis = "An Applicative Functor deferring actions to run in a batch later.";
      description = "This provides the type Batching, an Applicative which defers request-response\nexchanges of a fixed type, to be performed in a single batch.  This means you\ncan write code that appears to issue requests and immediately receive their\nresponses, but process the requests jointly all at once.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
          (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
        ];
        buildable = true;
      };
      tests = {
        "Batching-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."batching" or (errorHandler.buildDepError "batching"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }