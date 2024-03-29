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
    flags = { pkg-config = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "xxhash-ffi"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 Henri Verroken";
      maintainer = "Bodigrim";
      author = "Henri Verroken";
      homepage = "https://github.com/haskell-haskey/xxhash-ffi#readme";
      url = "";
      synopsis = "Bindings and high-level helpers for xxHash";
      description = "Bindings and high-level helpers for xxHash family\nof extremely fast non-cryptographic hash functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "9.4") (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"));
        pkgconfig = (pkgs.lib).optional (flags.pkg-config && (compiler.isGhc && (compiler.version).lt "8.4" || compiler.isGhc && (compiler.version).ge "8.10")) (pkgconfPkgs."libxxhash" or (errorHandler.pkgConfDepError "libxxhash"));
        buildable = true;
        };
      tests = {
        "xxhash-ffi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xxhash-ffi" or (errorHandler.buildDepError "xxhash-ffi"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "9.4") (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"));
          buildable = true;
          };
        };
      benchmarks = {
        "xxhash-ffi-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xxhash-ffi" or (errorHandler.buildDepError "xxhash-ffi"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
            (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "9.10") (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"));
          buildable = true;
          };
        };
      };
    }