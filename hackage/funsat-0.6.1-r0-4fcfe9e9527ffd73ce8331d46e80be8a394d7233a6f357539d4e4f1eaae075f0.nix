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
      specVersion = "1.2";
      identifier = { name = "funsat"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "http://github.com/dbueno/funsat";
      url = "";
      synopsis = "A modern DPLL-style SAT solver";
      description = "Funsat is a native Haskell SAT solver that uses modern techniques for\nsolving SAT instances.  Current features include two-watched literals,\nconflict-directed learning, non-chronological backtracking, a VSIDS-like\ndynamic variable ordering, and restarts.  Our goal is to facilitate\nconvenient embedding of a reasonably fast SAT solver as a constraint\nsolving backend in other applications.\nCurrently along this theme we provide unsatisfiable core generation (see\n\"Funsat.Resolution\") and a logical circuit interface (see \"Funsat.Circuit\").\nNew in 0.6: circuits and BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."parse-dimacs" or (errorHandler.buildDepError "parse-dimacs"))
          (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
        buildable = true;
        };
      exes = {
        "funsat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."parse-dimacs" or (errorHandler.buildDepError "parse-dimacs"))
            (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }