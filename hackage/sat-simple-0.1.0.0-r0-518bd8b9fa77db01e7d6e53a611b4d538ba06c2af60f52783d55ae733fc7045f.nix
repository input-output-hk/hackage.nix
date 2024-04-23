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
      specVersion = "2.4";
      identifier = { name = "sat-simple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "A high-level wrapper over minisat";
      description = "A high-level wrapper over minisat.\n\nThis package differs from [@ersatz@](https://hackage.haskell.org/package/ersatz) in few ways:\n\n* The interface resembles 'ST' monad, with 'SAT' monad and literals 'Lit' are indexed by a scope @s@ type argument.\n\n* @sat-simple@ uses @minisat@'s library in incremental way, instead of encoding to DIMACS format and spawning processes.\n(@ersatz@ can be made to use @minisat@ library as well, but it cannot use incrementality AFAICT).\n\n* @sat-simple@ has less encodings built-in\n\n* @sat-simple@ is hopefully is indeed simpler to use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
      tests = {
        "sat-simple-sudoku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sat-simple" or (errorHandler.buildDepError "sat-simple"))
          ];
          buildable = true;
        };
        "sat-simple-nonogram" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."sat-simple" or (errorHandler.buildDepError "sat-simple"))
          ];
          buildable = true;
        };
        "sat-simple-tseitin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sat-simple" or (errorHandler.buildDepError "sat-simple"))
          ];
          buildable = true;
        };
      };
    };
  }