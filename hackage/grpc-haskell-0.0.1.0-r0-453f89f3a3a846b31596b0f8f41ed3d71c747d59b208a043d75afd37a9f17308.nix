{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; with-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "grpc-haskell"; version = "0.0.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
          (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
          (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
          ];
        buildable = true;
        };
      exes = {
        "hellos-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "hellos-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "echo-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "arithmetic-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "arithmetic-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "echo-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."grpc-haskell" or ((hsPkgs.pkgs-errors).buildDepError "grpc-haskell"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."proto3-suite" or ((hsPkgs.pkgs-errors).buildDepError "proto3-suite"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }