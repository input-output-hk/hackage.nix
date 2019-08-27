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
      identifier = { name = "process-streaming"; version = "0.6.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Streaming interface to system processes.";
      description = "Concurrent, streaming access to the input and outputs of system processes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."conceit" or (buildDepError "conceit"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process-streaming" or (buildDepError "process-streaming"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
            (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process-streaming" or (buildDepError "process-streaming"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
            (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      };
    }