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
      specVersion = "1.2.3";
      identifier = { name = "llvm-ht"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>, Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Bryan O'Sullivan, Lennart Augustsson, Henning Thielemann";
      homepage = "http://darcs.serpentine.com/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit with some custom extensions.";
      description = "Bindings to the LLVM compiler toolkit.\nCustom extensions:\n* vector-aware versions of fptosi and friends\n* Callback from LLVM code into Haskell code including StablePtr support\n* tuple arguments to LLVM functions\n* instance IsFirstClass Array\n* CodeGen.constStruct\n* Instruction.extractvalue, insertvalue\n* Core.Instruction.bitcastUnify: like bitcast but uses type unification for asserting equal size of source and target\nNews in the original llvm package:\n* New in 0.7.0.0: Adapted to LLVM 2.6;\n* New in 0.6.8.0: Add functions to allow freeing function resources;\n* New in 0.6.7.0: Struct types;\n* New in 0.6.6.0: Bug fixes;\n* New in 0.6.5.0: Adapted to LLVM 2.5;";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."type-level" or (buildDepError "type-level"))
          ];
        };
      };
    }