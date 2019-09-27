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
    flags = { debugandersenconstraints = false; debugandersengraph = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "llvm-analysis"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "";
      url = "";
      synopsis = "A Haskell library for analyzing LLVM bitcode";
      description = "A Haskell library for analyzing LLVM bitcode.  To convert\nbitcode to the format used by this library, see the\nllvm-data-interop package.\n\nThis library attempts to provide some basic program analysis\ninfrastructure and aims to scale to large bitcode files.\n\nThere are some useful tools built on top of this library\navailable in the llvm-tools package.\n\nChanges since 0.2.0:\n* LLVM 3.3 support (contributed by Patrick Hulin)\n* Metadata format change.  Metadata type entries no longer have\na MetaDWFile.  Instead, file and directory names are stored\ndirectly in each MetaDW*Type.  This change lets us more easily\naccommodate changes in LLVM 3.3 (while supporting older versions).\n* Under LLVM 3.3, the 'metaCompileUnitIsMain' field of MetaDWCompileUnit\nis always False.  This disappeared in LLVM 3.3, but removing it would\nbe an unnecessary API break, I think.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."monad-par" or (buildDepError "monad-par"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
          (hsPkgs."hoopl" or (buildDepError "hoopl"))
          (hsPkgs."llvm-base-types" or (buildDepError "llvm-base-types"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."boomerang" or (buildDepError "boomerang"))
          (hsPkgs."ifscs" or (buildDepError "ifscs"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
          (hsPkgs."itanium-abi" or (buildDepError "itanium-abi"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          ];
        buildable = true;
        };
      tests = {
        "CallGraphTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            ];
          buildable = true;
          };
        "BlockReturnTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            ];
          buildable = true;
          };
        "ReturnTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            ];
          buildable = true;
          };
        "AccessPathTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            ];
          buildable = true;
          };
        "ClassHierarchyTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            (hsPkgs."itanium-abi" or (buildDepError "itanium-abi"))
            ];
          buildable = true;
          };
        "AndersenTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            ] ++ (pkgs.lib).optional (flags.debugandersengraph) (hsPkgs."graphviz" or (buildDepError "graphviz"));
          buildable = true;
          };
        };
      };
    }