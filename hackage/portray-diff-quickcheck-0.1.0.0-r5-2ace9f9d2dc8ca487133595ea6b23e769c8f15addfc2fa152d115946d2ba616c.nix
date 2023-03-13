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
      identifier = { name = "portray-diff-quickcheck"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>, Pavel Krajcevski <krajcevski@google.com>";
      author = "Pavel Krajcevski <krajcevski@google.com>";
      homepage = "https://github.com/google/hs-portray#readme";
      url = "";
      synopsis = "QuickCheck tests with portray-diff";
      description = "This provides equality assertion functions for QuickCheck that pretty-print\nstructural diffs of the values in question, rather than dumping the entire\nalues as part of the counterexamples.  This is useful when comparing very\nlarge values, since it can otherwise be difficult to tell what changed\nbetween expected and actual values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."portray-pretty" or (errorHandler.buildDepError "portray-pretty"))
          ];
        buildable = true;
        };
      };
    }