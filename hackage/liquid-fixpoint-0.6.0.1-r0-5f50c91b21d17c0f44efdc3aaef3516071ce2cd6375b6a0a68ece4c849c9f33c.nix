{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."fgl-visualize" or ((hsPkgs.pkgs-errors).buildDepError "fgl-visualize"))
          (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10.2") (hsPkgs."located-base" or ((hsPkgs.pkgs-errors).buildDepError "located-base"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."ascii-progress" or ((hsPkgs.pkgs-errors).buildDepError "ascii-progress"));
        buildable = true;
        };
      exes = {
        "fixpoint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."liquid-fixpoint" or ((hsPkgs.pkgs-errors).buildDepError "liquid-fixpoint"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or ((hsPkgs.pkgs-errors).buildDepError "tasty-rerun"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "testparser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or ((hsPkgs.pkgs-errors).buildDepError "tasty-rerun"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (if flags.devel
            then [
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
              (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
              (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
              (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
              (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
              (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
              (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
              (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
              (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
              (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
              (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
              (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
              (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
              (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
              (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
              (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
              (hsPkgs."fgl-visualize" or ((hsPkgs.pkgs-errors).buildDepError "fgl-visualize"))
              (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10.2") (hsPkgs."located-base" or ((hsPkgs.pkgs-errors).buildDepError "located-base"))
            else [
              (hsPkgs."liquid-fixpoint" or ((hsPkgs.pkgs-errors).buildDepError "liquid-fixpoint"))
              ]);
          buildable = true;
          };
        };
      };
    }