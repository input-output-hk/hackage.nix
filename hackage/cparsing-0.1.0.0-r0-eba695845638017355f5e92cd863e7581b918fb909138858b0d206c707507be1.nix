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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }