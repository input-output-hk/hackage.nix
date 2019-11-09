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
    flags = { dhall = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "proto3-suite"; version = "0.4.0.0"; };
      license = "Apache-2.0";
      copyright = "2017-2018 Awake Security";
      maintainer = "opensource@awakesecurity.com";
      author = "Awake Security";
      homepage = "";
      url = "";
      synopsis = "A low level library for writing out data in the Protocol Buffers wire format";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."insert-ordered-containers" or (buildDepError "insert-ordered-containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.dhall) (hsPkgs."dhall" or (buildDepError "dhall"));
        buildable = true;
        };
      exes = {
        "compile-proto-file" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          buildable = true;
          };
        "canonicalize-proto-file" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."range-set-list" or (buildDepError "range-set-list"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."generic-arbitrary" or (buildDepError "generic-arbitrary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."proto3-suite" or (buildDepError "proto3-suite"))
            (hsPkgs."proto3-wire" or (buildDepError "proto3-wire"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."swagger2" or (buildDepError "swagger2"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.dhall) (hsPkgs."dhall" or (buildDepError "dhall"));
          buildable = true;
          };
        };
      };
    }