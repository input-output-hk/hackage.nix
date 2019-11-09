let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
          (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
          (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."managed" or (buildDepError "managed"))
          ];
        buildable = true;
        };
      exes = {
        "hellos-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "hellos-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "echo-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "arithmetic-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "arithmetic-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        "echo-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."grpc-haskell-core" or (buildDepError "grpc-haskell-core"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.with-examples then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."managed" or (buildDepError "managed"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grpc-haskell" or (buildDepError "grpc-haskell"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }