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
    flags = { z3mem = false; build-external = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "liquid-fixpoint"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2010-15 Ranjit Jhala, University of California, San Diego.";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquid-fixpoint";
      url = "";
      synopsis = "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver";
      description = "This package is a Haskell wrapper to the SMTLIB-based\nHorn-Clause/Logical Implication constraint solver used\nfor Liquid Types.\n\nThe solver itself is written in Ocaml.\n\nThe package includes:\n\n1. Types for Expressions, Predicates, Constraints, Solutions\n\n2. Code for serializing the above\n\n3. Code for parsing the results from the fixpoint.native binary\n\n4. The Ocaml fixpoint code and pre-compiled binaries\n\n5. (Deprecated) Z3 binaries if you want to link against the API.\n\nRequirements\n\nIn addition to the .cabal dependencies you require\n\n- A Z3 (<http://z3.codeplex.com>) or CVC4 (<http://cvc4.cs.nyu.edu>) binary.\nIf on Windows, please make sure to place the binary and any associated DLLs\nin your \"cabal/bin\" folder, right next to the fixpoint.native.exe binary.\n\n- An ocaml compiler (if installing with -fbuild-external).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          ];
        buildable = true;
        };
      exes = {
        "fixpoint.native" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
            ];
          buildable = true;
          };
        "fixpoint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
            ];
          buildable = true;
          };
        };
      };
    }