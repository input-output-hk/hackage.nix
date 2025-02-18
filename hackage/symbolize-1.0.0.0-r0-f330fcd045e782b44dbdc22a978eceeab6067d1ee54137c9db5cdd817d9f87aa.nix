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
      identifier = { name = "symbolize"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023-2025 Marten Wijnja";
      maintainer = "qqwy@gmx.com";
      author = "Qqwy / Marten";
      homepage = "https://github.com/Qqwy/haskell-symbolize#readme";
      url = "";
      synopsis = "Efficient global Symbol table, with Garbage Collection.";
      description = "Symbols, also known as Atoms or Interned Strings, are a common technique\nto reduce memory usage and improve performance when using many small strings.\n\nBy storing a single copy of each encountered string in a global table and giving out pointers to the stored keys,\nit is possible to compare strings for equality in constant time, instead of linear (in string size) time.\nFurthermore, by using `StableName`, hashing of Symbols also takes constant-time, so `Symbol`s make great hashmap keys!.\n\nThe main advantages of Symbolize over other symbol table implementations are:\n\n- Garbage collection: Symbols which are no longer used are automatically cleaned up.\n- Support for any `Textual` type, including `String`, (strict and lazy) `Data.Text`, (strict and lazy) `Data.ByteString`, `ShortText`, `ShortByteString`, etc.\n- Great memory usage:\n- `Symbol`s are simply a (lifted) wrapper around a `ByteArray#`, which is nicely unpacked by GHC.\n- The symbol table is an `IntMap` that contains weak pointers to these same `ByteArray#`s and their associated `StableName#`s\n- Great performance:\n- `unintern` is a simple pointer-dereference\n- calls to `lookup` are free of atomic memory barriers (and never have to wait on a concurrent thread running `intern`)\n- Thread-safe\n\nPlease see the full README below or on GitHub at <https://github.com/Qqwy/haskell-symbolize#readme>";
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
    };
  }