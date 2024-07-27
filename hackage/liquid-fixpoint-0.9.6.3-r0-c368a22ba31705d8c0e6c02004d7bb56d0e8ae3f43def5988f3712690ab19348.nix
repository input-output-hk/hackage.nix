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
    flags = { link-z3-as-a-library = false; devel = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "liquid-fixpoint"; version = "0.9.6.3"; };
      license = "BSD-3-Clause";
      copyright = "2010-17 Ranjit Jhala, University of California, San Diego.";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquid-fixpoint#readme";
      url = "";
      synopsis = "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver";
      description = "This package implements an SMTLIB based Horn-Clause\\/Logical Implication constraint\nsolver used for Liquid Types.\n\nThe package includes:\n\n1. Types for Expressions, Predicates, Constraints, Solutions\n2. Code for solving constraints\n\nRequirements\n\nIn addition to the .cabal dependencies you require\n\n* A Z3 (<http://z3.codeplex.com>) or CVC4 (<http://cvc4.cs.nyu.edu>) binary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."rest-rewrite" or (errorHandler.buildDepError "rest-rewrite"))
          (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
          (hsPkgs."smtlib-backends-process" or (errorHandler.buildDepError "smtlib-backends-process"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ pkgs.lib.optional (flags.link-z3-as-a-library) (hsPkgs."smtlib-backends-z3" or (errorHandler.buildDepError "smtlib-backends-z3"))) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."ascii-progress" or (errorHandler.buildDepError "ascii-progress"));
        buildable = true;
      };
      exes = {
        "fixpoint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or (errorHandler.buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.liquid-fixpoint.components.exes.fixpoint or (pkgs.pkgsBuildBuild.fixpoint or (errorHandler.buildToolDepError "liquid-fixpoint:fixpoint")))
          ];
          buildable = true;
        };
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }