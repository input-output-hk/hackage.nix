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
    flags = { aeson = false; llvm-bench = false; optimize = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "rapidhash"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2026 Jeremy Nuttall";
      maintainer = "jeremy@jeremy-nuttall.com";
      author = "Jeremy Nuttall";
      homepage = "https://github.com/jtnuttall/lithon#readme";
      url = "";
      synopsis = "rapidhash v3 - very fast, high-quality, non-cryptographic hashing";
      description = "Zero-copy FFI bindings to rapidhash v3, a very fast, high-quality,\nnon-cryptographic hash. The upstream single-header C implementation is\nvendored and ships with this package, so there is no system dependency.\n\nThe rapidhash algorithm itself is platform-independent. This package's\nbyte-oriented instances (Text, ByteString, ShortByteString, ByteArray)\nproduce stable, portable digests you can persist and compare across\nmachines; the element-typed Vector and PrimArray instances hash raw memory\nas a fast path for large in-memory working sets and are not portable across\nword width or endianness.\n\nThis is not a cryptographically secure hash. Use something else if you need cryptographic\nsecurity.\n\nFor more information, see the upstream repository: https://github.com/Nicoshev/rapidhash";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"));
        buildable = true;
      };
      tests = {
        "rapidhash-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."rapidhash" or (errorHandler.buildDepError "rapidhash"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "rapidhash-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."rapidhash" or (errorHandler.buildDepError "rapidhash"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "rapidhash-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."rapidhash" or (errorHandler.buildDepError "rapidhash"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."xxhash-ffi" or (errorHandler.buildDepError "xxhash-ffi"))
          ];
          buildable = true;
        };
      };
    };
  }