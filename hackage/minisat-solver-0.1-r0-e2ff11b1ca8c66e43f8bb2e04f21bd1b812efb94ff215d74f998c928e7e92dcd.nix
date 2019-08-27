let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "minisat-solver"; version = "0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 Peter Selinger,\nCopyright (c) 2015 Takahisa Toda,\nCopyright (c) 2005 Niklas Sorensson";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/minisat-solver/";
      url = "";
      synopsis = "High-level Haskell bindings for the MiniSat SAT solver.";
      description = "This package provides high-level Haskell bindings for the well-known\nMiniSat satisfiability solver. It solves the boolean satisfiability\nproblem, i.e., the input is a boolean formula, and the output is a\nlist of all satisfying assignments.\nMiniSat is a fully automated, well-optimized general-purpose SAT\nsolver written by Niklas Een and Niklas Sorensson, and further\nmodified by Takahisa Toda.\nUnlike other similar Haskell packages, we provide a convenient\nhigh-level interface to the SAT solver, hiding the complexity of the\nunderlying C implementation. It can be easily integrated into other\nprograms as an efficient turn-key solution to many search problems.\nTo illustrate the use of the library, two example programs are\nincluded in the \"examples\" directory; one program solves Sudoku\npuzzles, and the other solves a 3-dimensional block packing\nproblem. These programs can be built manually, or by invoking Cabal\nwith the '--enable-benchmarks' option.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      benchmarks = {
        "Sudoku" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."minisat-solver" or (buildDepError "minisat-solver"))
            ];
          };
        "Woodblocks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."easyrender" or (buildDepError "easyrender"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."minisat-solver" or (buildDepError "minisat-solver"))
            ];
          };
        };
      };
    }