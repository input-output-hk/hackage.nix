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
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "symbolize"; version = "1.0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "2023-2025 Marten Wijnja";
      maintainer = "qqwy@gmx.com";
      author = "Qqwy / Marten";
      homepage = "https://github.com/Qqwy/haskell-symbolize#readme";
      url = "";
      synopsis = "Efficient global Symbol table, with Garbage Collection.";
      description = "Symbols, also known as Atoms or Interned Strings, are a common technique\nto reduce memory usage and improve performance when using many small strings:\n\nA Symbol represents a string (any `Textual`, so String, Text, ShortText, ByteString, ShortByteString, etc.)\n\nJust like `ShortText`, `ShortByteString` and `ByteArray`, a `Symbol` has an optimized memory representation,\ndirectly wrapping a primitive `ByteArray#`.\n\nFurthermore, a global symbol table keeps track of which values currently exist, ensuring we always deduplicate symbols.\nThis therefore allows us to:\n\n- Check for equality between symbols in constant-time (using pointer equality)\n- Calculate the hash in constant-time (using `StableName`)\n- Keep the memory footprint of repeatedly-seen strings low.\n\nThis is very useful if you're frequently comparing strings\nand the same strings might come up many times.\nIt also makes Symbol a great candidate for a key in e.g. a `HashMap` or `HashSet`.\n\nThe global symbol table is implemented using weak pointers,\nwhich means that unused symbols will be garbage collected.\nAs such, you do not need to be concerned about memory leaks\n(as is the case with many other symbol table implementations).\n\nPlease see the full README below or on GitHub at <https://github.com/Qqwy/haskell-symbolize#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
        ];
        buildable = true;
      };
      tests = {
        "symbolize-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."symbolize" or (errorHandler.buildDepError "symbolize"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
          buildable = true;
        };
        "symbolize-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."symbolize" or (errorHandler.buildDepError "symbolize"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "symbolize-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."symbolize" or (errorHandler.buildDepError "symbolize"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }