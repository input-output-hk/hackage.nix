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
      identifier = { name = "groan"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Michael Ledger <mike@quasimal.com>";
      author = "Michael Ledger";
      homepage = "";
      url = "";
      synopsis = "ugh, another growable vector library?";
      description = "Yet another contiguous growable vector buffer library.\n\nFor algorithms where you need to pass around a growing buffer between\na few different contexts, such as in and out of a data-structure,\nyou're likely to get better performance using a mutable array than\nwith a continuation-based builder type. This is because in the\ncontinuation-based builder, you're building up a linked list of\nappend thunks, and there's no ability for GHC to fuse them together.\nIn comparison, buffers have easily predictable performance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
            (hsPkgs."groan" or (errorHandler.buildDepError "groan"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }