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
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "liquid-fixpoint"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010-17 Ranjit Jhala, University of California, San Diego.";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquid-fixpoint";
      url = "";
      synopsis = "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver";
      description = "This package is a Haskell wrapper to the SMTLIB-based\nHorn-Clause/Logical Implication constraint solver used\nfor Liquid Types.\n\nThe package includes:\n\n1. Types for Expressions, Predicates, Constraints, Solutions\n\n2. Code for solving constraints\n\nRequirements\n\nIn addition to the .cabal dependencies you require\n\n- A Z3 (<http://z3.codeplex.com>) or CVC4 (<http://cvc4.cs.nyu.edu>) binary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."intern" or (buildDepError "intern"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."boxes" or (buildDepError "boxes"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."fgl-visualize" or (buildDepError "fgl-visualize"))
          (hsPkgs."dotgen" or (buildDepError "dotgen"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10.2") (hsPkgs."located-base" or (buildDepError "located-base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."ascii-progress" or (buildDepError "ascii-progress"));
        buildable = true;
        };
      exes = {
        "fixpoint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "testparser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.devel
            then [
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."async" or (buildDepError "async"))
              (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
              (hsPkgs."syb" or (buildDepError "syb"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
              (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
              (hsPkgs."binary" or (buildDepError "binary"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."filemanip" or (buildDepError "filemanip"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
              (hsPkgs."intern" or (buildDepError "intern"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."parsec" or (buildDepError "parsec"))
              (hsPkgs."pretty" or (buildDepError "pretty"))
              (hsPkgs."boxes" or (buildDepError "boxes"))
              (hsPkgs."parallel" or (buildDepError "parallel"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."syb" or (buildDepError "syb"))
              (hsPkgs."text" or (buildDepError "text"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."hashable" or (buildDepError "hashable"))
              (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
              (hsPkgs."cereal" or (buildDepError "cereal"))
              (hsPkgs."text-format" or (buildDepError "text-format"))
              (hsPkgs."fgl" or (buildDepError "fgl"))
              (hsPkgs."fgl-visualize" or (buildDepError "fgl-visualize"))
              (hsPkgs."dotgen" or (buildDepError "dotgen"))
              (hsPkgs."time" or (buildDepError "time"))
              ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10.2") (hsPkgs."located-base" or (buildDepError "located-base"))
            else [
              (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
              ]);
          buildable = true;
          };
        };
      };
    }