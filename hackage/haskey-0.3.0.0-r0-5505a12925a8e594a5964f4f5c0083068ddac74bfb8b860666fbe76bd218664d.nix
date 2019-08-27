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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskey"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Henri Verroken, Steven Keuchel";
      maintainer = "steven.keuchel@gmail.com";
      author = "Henri Verroken, Steven Keuchel";
      homepage = "https://github.com/haskell-haskey";
      url = "";
      synopsis = "A transactional, ACID compliant, embeddable key-value store.";
      description = "Haskey is a transactional, ACID compliant, embeddable, scalable key-value\nstore written entirely in Haskell.\n\nFor more information on how to use this package, visit\n<https://github.com/haskell-haskey/haskey>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."focus" or (buildDepError "focus"))
          (hsPkgs."haskey-btree" or (buildDepError "haskey-btree"))
          (hsPkgs."list-t" or (buildDepError "list-t"))
          (hsPkgs."lz4" or (buildDepError "lz4"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."xxhash-ffi" or (buildDepError "xxhash-ffi"))
          ];
        };
      tests = {
        "haskey-properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."haskey" or (buildDepError "haskey"))
            (hsPkgs."haskey-btree" or (buildDepError "haskey-btree"))
            ];
          };
        "haskey-integration" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."haskey" or (buildDepError "haskey"))
            (hsPkgs."haskey-btree" or (buildDepError "haskey-btree"))
            ];
          };
        "haskey-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskey" or (buildDepError "haskey"))
            (hsPkgs."haskey-btree" or (buildDepError "haskey-btree"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }