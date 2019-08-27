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
      specVersion = "1.14";
      identifier = { name = "sbv"; version = "2.9"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2010-2013";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://leventerkok.github.com/sbv/";
      url = "";
      synopsis = "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.";
      description = "Express properties about Haskell programs and automatically prove them using SMT\n(Satisfiability Modulo Theories) solvers. Automatically generate C programs from\nHaskell functions. The SBV library adds support for symbolic bit vectors and other\nsymbolic types, allowing formal models of Haskell programs to be created.\n\n>   \$ ghci -XScopedTypeVariables\n>   Prelude> :m Data.SBV\n>   Prelude Data.SBV> prove \$ \\(x::SWord8) -> x `shiftL` 2 .== 4*x\n>   Q.E.D.\n>   Prelude Data.SBV> prove \$ forAll [\"x\"] \$ \\(x::SWord8) -> x `shiftL` 2 .== x\n>   Falsifiable. Counter-example:\n>     x = 128 :: SWord8\n\nYou can pick the SMT solver you want to use by importing the appropriate module. The SBV library currently\nworks with the the following SMT solvers:\n\n[@import \"Data.SBV\"@]\nPicks the default solver, which is currently set to be Z3. (Might change in the future!)\n\n[@import \"Data.SBV.Bridge.Z3\"@]\nPicks Z3 from Microsoft (<http://z3.codeplex.com/>).\n\n[@import \"Data.SBV.Bridge.Yices\"@]\nPicks Yices from SRI (<http://yices.csl.sri.com/>)\n\n[@import \"Data.SBV.Bridge.CVC4\"@]\nPicks CVC4 from New York University and the University of Iowa (<http://cvc4.cs.nyu.edu>)\n\nSBV introduces the following types and concepts:\n\n* 'SBool': Symbolic Booleans (bits)\n\n* 'SWord8', 'SWord16', 'SWord32', 'SWord64': Symbolic Words (unsigned)\n\n* 'SInt8',  'SInt16',  'SInt32',  'SInt64': Symbolic Ints (signed)\n\n* 'SInteger': Symbolic unbounded integers (signed)\n\n* 'SReal': Symbolic algebraic reals (signed)\n\n* 'SArray', 'SFunArray': Flat arrays of symbolic values\n\n* 'STree': Full binary trees of symbolic values (for fast symbolic access)\n\n* Symbolic polynomials over GF(2^n), and polynomial arithmetic\n\n* Uninterpreted constants and functions over symbolic values, with user defined axioms.\n\n* Uninterpreted sorts, and proofs over such sorts, potentially with axioms.\n\nFunctions built out of these types can be:\n\n* proven correct via an external SMT solver (the 'prove' function)\n\n* checked for satisfiability (the 'sat', and 'allSat' functions)\n\n* used in synthesis (the 'sat' function with existential variables)\n\n* optimized with respect to cost functions (the 'optimize', 'maximize',\nand 'minimize' functions)\n\n* quick-checked\n\n* used in concrete test case generation (the 'genTest' function), rendered as\nvalues in various languages, including Haskell and C.\n\nPredicates can have both existential and universal variables. Use of\nalternating quantifiers provides considerable expressive power.\nFurthermore, existential variables allow synthesis via model generation.\n\nThe SBV library can also compile Haskell functions that manipulate symbolic\nvalues directly to C, rendering them as straight-line C programs.\n\nIn addition to the library, the installation will create the\nexecutable @SBVUnitTests@. You should run it once the installation is complete,\nto make sure the unit tests are run and all is well.\n\nSBV is hosted at GitHub: <http://github.com/LeventErkok/sbv>. Comments,\nbug reports, and patches are always welcome.\n\nThe following people reported bugs, provided comments/feedback, or contributed to the\ndevelopment of SBV in various ways: Ian Blumenfeld, Ian Calvert, Iavor Diatchki, John\nErickson, Tom Hawkins, Lee Pike, Austin Seipp, Don Stewart, Josef Svenningsson, and\nNis Wegmann.\n\nRelease notes can be seen at: <http://github.com/LeventErkok/sbv/blob/master/RELEASENOTES>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ];
        };
      exes = {
        "SBVUnitTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."sbv" or (buildDepError "sbv"))
            ];
          };
        };
      tests = {
        "SBVBasicTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."sbv" or (buildDepError "sbv"))
            ];
          };
        };
      };
    }