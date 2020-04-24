{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "cparsing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "";
      url = "";
      synopsis = "A simple C++ parser with preprocessor features. C++ refactorings included.";
      description = "A simple implementation of a C++ parser using Parsec. It is defined with a custom AST and parser.\nThe basic idea was to create a C++ representation that keeps its connection with the original\nsource code regardless of the preprocessor operations done on it. Each AST node that is expanded\nfrom a macro expansion records that fact and their transformations are constrained to protect\nthe original structure of the program.\nA preprocessor implementation is given that tracks the macro expansions and this helps to create\nan AST where the nodes refer to the original source code from which they were generated.\nThe MiniC module contains the entry point of the parser, the CTransform package provides a transformation of the AST.\nThe C++ AST and parser and semantical analysis is defined in the MiniC package.\nTraversing utilities are defined in the Data package.\nGeneral AST elements are defined in the SourceCode package.\nThis is an early project of mine, the ideas behind this project are fully developed in the\nHaskell-Tools project. Regardless, this early experience led me to continue using this approach.\nBy the way, this is an old project I am no longer developing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }