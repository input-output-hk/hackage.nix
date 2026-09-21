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
    flags = {
      simd = true;
      compare-text-rope = false;
      compare-yi-rope = false;
      compare-core-text = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "nano-rope"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "B-tree text rope with flat chunks, multi-unit indexing and custom measures";
      description = "A persistent text rope for editors, language servers and parsers.\n\n* UTF-8 chunks of at most 512 bytes keep local edits small, even in\n  documents with very long lines.\n\n* A B-tree with up to 16 children per node shares unchanged text between\n  versions, making snapshots and undo inexpensive.\n\n* Consecutive insertions can use a bounded keystroke buffer to reduce\n  tree updates.\n\n* Cached byte, code point, UTF-16 and newline counts support\n  logarithmic-time indexing and conversion between units.\n\n* Chunk scans use SSE2 or AVX2 on supported x86-64 systems, with portable\n  C elsewhere. Build with @-f -simd@ for Haskell-only scans.\n\n* Chunk views and buffered UTF-8 output avoid flattening the document.\n\n* Custom monoidal measures support application-specific summaries\n  and prefix searches.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "nano-rope-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."nano-rope" or (errorHandler.buildDepError "nano-rope"))
          ];
          buildable = true;
        };
        "nano-rope-test-small" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "nano-rope-bench" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nano-rope" or (errorHandler.buildDepError "nano-rope"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (flags.compare-text-rope) (hsPkgs."text-rope" or (errorHandler.buildDepError "text-rope"))) ++ pkgs.lib.optional (flags.compare-yi-rope) (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))) ++ pkgs.lib.optional (flags.compare-core-text) (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"));
          buildable = true;
        };
      };
    };
  }