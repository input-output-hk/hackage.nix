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
      identifier = { name = "jsons-to-schema"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Gareth Tan";
      maintainer = "Gareth Tan";
      author = "Gareth Tan";
      homepage = "https://github.com/garetht/jsons-to-schema/README.md";
      url = "";
      synopsis = "JSON to JSON Schema";
      description = "A JSON Schema Draft 4 Generator from JSON Instances";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hjsonschema" or (buildDepError "hjsonschema"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      exes = {
        "jsons-to-schema-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."jsons-to-schema" or (buildDepError "jsons-to-schema"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hjsonschema" or (buildDepError "hjsonschema"))
            ];
          };
        };
      tests = {
        "jsons-to-schema-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."jsons-to-schema" or (buildDepError "jsons-to-schema"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."hjsonschema" or (buildDepError "hjsonschema"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }