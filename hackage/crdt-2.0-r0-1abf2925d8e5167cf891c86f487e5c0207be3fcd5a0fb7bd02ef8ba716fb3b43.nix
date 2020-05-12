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
      identifier = { name = "crdt"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Yuriy Syrovetskiy, Nikolay Loginov";
      maintainer = "Yuriy Syrovetskiy <cblp@cblp.su>";
      author = "";
      homepage = "https://github.com/cblp/crdt#readme";
      url = "";
      synopsis = "Conflict-free replicated data types";
      description = "Definitions of CmRDT and CvRDT. Implementations for some classic CRDTs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."crdt" or (errorHandler.buildDepError "crdt"))
            ];
          buildable = true;
          };
        };
      };
    }