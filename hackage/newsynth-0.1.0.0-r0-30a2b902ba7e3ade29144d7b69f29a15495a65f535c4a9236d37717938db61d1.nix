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
      identifier = { name = "newsynth"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2012-2013 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/newsynth/";
      url = "";
      synopsis = "Exact and approximate synthesis of quantum circuits";
      description = "A library of algorithms for exact and approximate synthesis of\nquantum circuits over the Clifford+T gate set. This includes, among\nother things:\n\n* \"Quantum.Synthesis.Newsynth\": an efficient single-qubit\napproximate synthesis algorithm. From P. Selinger, \\\"Efficient\nClifford+T approximation of single-qubit operators\\\",\n<http://arxiv.org/abs/1212.6253>.\n\n* \"Quantum.Synthesis.MultiQubitSynthesis\": multi-qubit exact\nsynthesis algorithms. From B. Giles and P. Selinger, \\\"Exact\nsynthesis of multiqubit Clifford+/T/ circuits\\\", Physical Review A\n87, 032332, 2013, <http://arxiv.org/abs/1212.0506>.\n\n* \"Quantum.Synthesis.CliffordT\": the computation of\nMatsumoto-Amano normal forms. From K. Matsumoto and K. Amano,\n\\\"Representation of Quantum Circuits with Clifford and π\\/8\nGates\\\", <http://arxiv.org/abs/0806.3834>.\n\n* \"Quantum.Synthesis.RotationDecomposition\": an algorithm for\ndecomposing multi-qubit unitary operators into one- and two-level\nunitaries. See e.g. Section 4.5.1 of M. A. Nielsen and\nI. L. Chuang, \\\"Quantum Computation and Quantum Information\\\",\nCambridge University Press, 2002.\n\nThis package also provides an easy-to-use command line tool for\nsingle-qubit approximate synthesis.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."fixedprec" or (buildDepError "fixedprec"))
          (hsPkgs."superdoc" or (buildDepError "superdoc"))
          ];
        buildable = true;
        };
      exes = {
        "newsynth" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."superdoc" or (buildDepError "superdoc"))
            (hsPkgs."newsynth" or (buildDepError "newsynth"))
            ];
          buildable = true;
          };
        };
      };
    }