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
    flags = { tests = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "ktx-codec"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 IC Rainbow";
      maintainer = "aenor.realm@gmail.com";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "Khronos texture format";
      description = "This package implements low-level encoding and decoding for .ktx and .ktx2 files.\n\nA framework-specific wrapper may be needed to work with the decoded data and/or supercompression.\nCheck out test/Spec.hs for usage examples.\n\nKTX 1: https://registry.khronos.org/KTX/specs/1.0/ktxspec.v1.html\n\nKTX 2: https://registry.khronos.org/KTX/specs/2.0/ktxspec.v2.html#_abstract";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "ktx-codec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ktx-codec" or (errorHandler.buildDepError "ktx-codec"))
            (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
          ];
          buildable = if !flags.tests then false else true;
        };
      };
    };
  }