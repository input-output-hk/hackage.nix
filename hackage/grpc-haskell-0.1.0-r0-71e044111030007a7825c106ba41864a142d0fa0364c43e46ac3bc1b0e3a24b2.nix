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
    flags = { debug = false; with-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "grpc-haskell"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2016 Awake Networks";
      maintainer = "opensource@awakenetworks.com";
      author = "Awake Networks";
      homepage = "https://github.com/awakenetworks/gRPC-haskell";
      url = "";
      synopsis = "Haskell implementation of gRPC layered on shared C library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
          (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
          (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
        ];
        buildable = true;
      };
      exes = {
        "hellos-server" = {
          depends = pkgs.lib.optionals (flags.with-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.with-examples then true else false;
        };
        "hellos-client" = {
          depends = pkgs.lib.optionals (flags.with-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.with-examples then true else false;
        };
        "echo-server" = {
          depends = pkgs.lib.optionals (flags.with-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.with-examples then true else false;
        };
        "arithmetic-server" = {
          depends = pkgs.lib.optionals (flags.with-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.with-examples then true else false;
        };
        "arithmetic-client" = {
          depends = pkgs.lib.optionals (flags.with-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.with-examples then true else false;
        };
        "echo-client" = {
          depends = pkgs.lib.optionals (flags.with-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (errorHandler.buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.with-examples then true else false;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grpc-haskell" or (errorHandler.buildDepError "grpc-haskell"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."proto3-suite" or (errorHandler.buildDepError "proto3-suite"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }