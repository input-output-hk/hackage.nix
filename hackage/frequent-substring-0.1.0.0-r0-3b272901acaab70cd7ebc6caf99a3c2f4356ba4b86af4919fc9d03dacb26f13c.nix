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
      specVersion = "2.2";
      identifier = { name = "frequent-substring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Matthew Herzl";
      maintainer = "matthew@herzl.email";
      author = "Matthew Herzl";
      homepage = "https://github.com/mherzl/frequent-substring#readme";
      url = "";
      synopsis = "Identifies and replaces frequent subsequences in long strings";
      description = "Please see the README on GitHub at <https://github.com/mherzl/frequent-substring#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-replace" or (errorHandler.buildDepError "text-replace"))
        ];
        buildable = true;
      };
      exes = {
        "frequent-substring-exe" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."frequent-substring" or (errorHandler.buildDepError "frequent-substring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-replace" or (errorHandler.buildDepError "text-replace"))
          ];
          buildable = true;
        };
      };
      tests = {
        "frequent-substring-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."frequent-substring" or (errorHandler.buildDepError "frequent-substring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-replace" or (errorHandler.buildDepError "text-replace"))
          ];
          buildable = true;
        };
      };
    };
  }