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
      specVersion = "1.12";
      identifier = { name = "safe-json"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 Felix Paulusma";
      maintainer = "felix.paulusma@gmail.com";
      author = "Felix Paulusma";
      homepage = "https://github.com/Vlix/safe-json#readme";
      url = "";
      synopsis = "Automatic JSON format versioning";
      description = "This library aims to make the updating of JSON formats or contents, while keeping backward compatibility, as painless as possible. The way this is achieved is through versioning and defined migration functions to migrate older (or newer) versions to the one used.\n\nThe library mainly consists of two classes:\n\n* @SafeJSON a@: Defines the version of @a@ and if (and how) it is migratable.\n\n* @Migrate a@: Defines the data type (@MigrateFrom a@) that can be migrated to @a@ and how to migrate from that type.\n\nUsing these two classes, JSON serialized data types will stay parsable, even after format changes.\n\nFor a more in-depth explanation and examples, please see the README at <https://github.com/Vlix/safe-json#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
          (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "safe-json-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."generic-arbitrary" or (buildDepError "generic-arbitrary"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."safe-json" or (buildDepError "safe-json"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }