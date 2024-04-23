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
      specVersion = "3.0";
      identifier = { name = "multiwalk"; version = "0.3.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "@lucasvr:matrix.org";
      author = "Lucas V. R.";
      homepage = "";
      url = "";
      synopsis = "Traverse data types via generics, acting on multiple types simultaneously.";
      description = "This library provides functionality for traversing data types recursively,\nacting on multiple types during the same traversal. In spirit, it is similar to\nthe Walk type class from Pandoc.Walk, but generalizes it by allowing\nmultiple types to be targeted by the traversal. In general, it only\nrequires an Applicative constraint on the action, making it suitable for\nsituations where you don't have a Monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "multiwalk-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multiwalk" or (errorHandler.buildDepError "multiwalk"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."multiwalk" or (errorHandler.buildDepError "multiwalk"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }