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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
          (hsPkgs."llvm-base-types" or (errorHandler.buildDepError "llvm-base-types"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."boomerang" or (errorHandler.buildDepError "boomerang"))
          (hsPkgs."ifscs" or (errorHandler.buildDepError "ifscs"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."itanium-abi" or (errorHandler.buildDepError "itanium-abi"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
        ];
        buildable = true;
      };
      tests = {
        "CallGraphTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
          ];
          buildable = true;
        };
        "BlockReturnTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
          ];
          buildable = true;
        };
        "ReturnTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
          ];
          buildable = true;
        };
        "AccessPathTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
          ];
          buildable = true;
        };
        "ClassHierarchyTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
            (hsPkgs."itanium-abi" or (errorHandler.buildDepError "itanium-abi"))
          ];
          buildable = true;
        };
        "AndersenTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
          ] ++ pkgs.lib.optional (flags.debugandersengraph) (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"));
          buildable = true;
        };
      };
    };
  }