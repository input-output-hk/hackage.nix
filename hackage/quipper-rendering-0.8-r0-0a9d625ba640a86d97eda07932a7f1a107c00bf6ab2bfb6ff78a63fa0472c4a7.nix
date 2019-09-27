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
      specVersion = "1.10";
      identifier = { name = "quipper-rendering"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Applied Communication Sciences.";
      maintainer = "leonardo.taglialegne@gmail.com";
      author = "Applied Communication Sciences";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "An embedded, scalable functional programming language for quantum computing.";
      description = "Quipper is an embedded, scalable functional programming language for quantum computing. It provides, among other things:\n\n* A high-level circuit description language. This includes gate-by-gate descriptions of circuit fragments, as well as powerful operators for assembling and manipulating circuits.\n\n* A monadic semantics, allowing for a mixture of procedural and declarative programming styles.\n\n* Built-in facilities for automatic synthesis of reversible quantum circuits, including from classical code.\n\n* Support for hierarchical circuits.\n\n* Extensible quantum data types.\n\n* Programmable circuit transformers.\n\n* Support for three execution phases: compile time, circuit generation time, and circuit execution time. A dynamic lifting operation to allow circuit generation to be parametric on values generated at circuit execution time.\n\n* Extensive libraries of quantum functions, including: libraries for quantum integer and fixed-point arithmetic; the Quantum Fourier transform; an efficient Qram implementation; libraries for simulation of pseudo-classical circuits, Stabilizer circuits, and arbitrary circuits; libraries for exact and approximate decomposition of circuits into specific gate sets.\n\nThis package contains the rendering part, which has been separated to reduce dependencies in quipper-core.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."quipper-core" or (buildDepError "quipper-core"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."easyrender" or (buildDepError "easyrender"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."primes" or (buildDepError "primes"))
          ];
        buildable = true;
        };
      };
    }