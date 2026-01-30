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
      identifier = { name = "dvv"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2026-Present, James R. Thompson";
      maintainer = "James R. Thompson <jamesthompsonoxford@gmail.com>";
      author = "James R. Thompson";
      homepage = "https://github.com/jamesthompson/dvv";
      url = "";
      synopsis = "Dotted Version Vectors (DVV)";
      description = "Dotted Version Vectors (DVV) provide a mechanism for tracking causality\nand detecting conflicts in distributed systems. This implementation supports\nefficient synchronization, event recording, and conflict resolution.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "dvv-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dvv" or (errorHandler.buildDepError "dvv"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          buildable = true;
        };
      };
    };
  }