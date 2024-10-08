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
      identifier = { name = "numeric-tools"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://bitbucket.org/Shimuuar/numeric-tools";
      url = "";
      synopsis = "Collection of numerical tools for integration, differentiation etc.";
      description = "Package provides function to perform numeric integration and\ndifferentiation, function interpolation.\n\nChanges in 0.2.0.0\n\n* Equation solvers now use custom return type.\n\n* Function to solve equations using Ridder and Newton methods.\n\n* New function to test approximate equality for doubles.\n\n* QuadRes contains best approximation achieved even if required\naccuracy is not obtained\n\n* Improve convergence test when integral converges to\nzero. Convergence is still poor";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."numeric-tools" or (errorHandler.buildDepError "numeric-tools"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }