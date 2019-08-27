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
    flags = { fuzz = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "llvm-pretty-bc-parser"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor Elliott";
      author = "Trevor Elliott <trevor@galois.com>";
      homepage = "";
      url = "";
      synopsis = "LLVM bitcode parsing library";
      description = "A parser for the LLVM bitcode file format, yielding a Module from the\nllvm-pretty package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."monadLib" or (buildDepError "monadLib"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."llvm-pretty" or (buildDepError "llvm-pretty"))
          ];
        };
      exes = {
        "llvm-disasm" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."monadLib" or (buildDepError "monadLib"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."fgl-visualize" or (buildDepError "fgl-visualize"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."llvm-pretty" or (buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (buildDepError "llvm-pretty-bc-parser"))
            ];
          };
        "fuzz-llvm-disasm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."llvm-pretty" or (buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (buildDepError "llvm-pretty-bc-parser"))
            ];
          };
        };
      tests = {
        "disasm-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."llvm-pretty" or (buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (buildDepError "llvm-pretty-bc-parser"))
            ];
          };
        };
      };
    }