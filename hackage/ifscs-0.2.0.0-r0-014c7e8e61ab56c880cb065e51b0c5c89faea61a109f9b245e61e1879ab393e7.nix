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
      identifier = { name = "ifscs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "";
      url = "";
      synopsis = "An inductive-form set constraint solver";
      description = "This is an implementation of an (inclusion) set constraint\nsolver.  Set constraints are a convenient and efficient way\nto specify and solve graph reachability problems.\n\nSee the Constraints.Set.Solver module for detailed documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "ConstraintTests" = {
          depends = [
            (hsPkgs."ifscs" or (errorHandler.buildDepError "ifscs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }