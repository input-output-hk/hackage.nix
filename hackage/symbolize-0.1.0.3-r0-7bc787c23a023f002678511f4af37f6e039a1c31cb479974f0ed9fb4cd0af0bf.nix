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
      identifier = { name = "symbolize"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2023 Marten Wijnja";
      maintainer = "qqwy@gmx.com";
      author = "Qqwy / Marten";
      homepage = "https://github.com/Qqwy/haskell-symbolize#readme";
      url = "";
      synopsis = "Efficient global Symbol table, with Garbage Collection.";
      description = "Symbols, also known as Atoms or Interned Strings, are a common technique\nto reduce memory usage and improve performance when using many small strings.\n\nBy storing a single copy of each encountered string in a global table and giving out indexes to that table,\nit is possible to compare strings for equality in constant time, instead of linear (in string size) time.\n\nThe main advantages of Symbolize over existing symbol table implementations are:\n\n- Garbage collection: Symbols which are no longer used are automatically cleaned up.\n- `Symbol`s have a memory footprint of exactly 1 `Word` and are nicely unpacked by GHC.\n- Support for any `Textual` type, including `String`, (strict and lazy) `Data.Text`, (strict and lazy) `Data.ByteString` etc.\n- Thread-safe.\n- Calls to `lookup` and `unintern` are free of atomic memory barriers (and never have to wait on a concurrent thread running `intern`)\n- Support for a maximum of 2^64 symbols at the same time (you'll probably run out of memory before that point).\n\nPlease see the full README below or on GitHub at <https://github.com/Qqwy/haskell-symbolize#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "symbolize-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."symbolize" or (errorHandler.buildDepError "symbolize"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "symbolize-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."symbolize" or (errorHandler.buildDepError "symbolize"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }