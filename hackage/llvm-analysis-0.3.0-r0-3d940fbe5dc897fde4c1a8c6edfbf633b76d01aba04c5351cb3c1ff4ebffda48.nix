{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
          (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."GenericPretty" or ((hsPkgs.pkgs-errors).buildDepError "GenericPretty"))
          (hsPkgs."hoopl" or ((hsPkgs.pkgs-errors).buildDepError "hoopl"))
          (hsPkgs."llvm-base-types" or ((hsPkgs.pkgs-errors).buildDepError "llvm-base-types"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."boomerang" or ((hsPkgs.pkgs-errors).buildDepError "boomerang"))
          (hsPkgs."ifscs" or ((hsPkgs.pkgs-errors).buildDepError "ifscs"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          (hsPkgs."itanium-abi" or ((hsPkgs.pkgs-errors).buildDepError "itanium-abi"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          ];
        buildable = true;
        };
      tests = {
        "CallGraphTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            ];
          buildable = true;
          };
        "BlockReturnTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            ];
          buildable = true;
          };
        "ReturnTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            ];
          buildable = true;
          };
        "AccessPathTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            ];
          buildable = true;
          };
        "ClassHierarchyTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            (hsPkgs."itanium-abi" or ((hsPkgs.pkgs-errors).buildDepError "itanium-abi"))
            ];
          buildable = true;
          };
        "AndersenTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            ] ++ (pkgs.lib).optional (flags.debugandersengraph) (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"));
          buildable = true;
          };
        };
      };
    }