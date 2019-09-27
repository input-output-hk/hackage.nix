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
      identifier = { name = "scalp-webhooks"; version = "0.1.2.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "";
      url = "";
      synopsis = "Test webhooks locally";
      description = "Opinionated tool for QAing webhooks on remote services using ngrok";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Spock" or (buildDepError "Spock"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."rainbow" or (buildDepError "rainbow"))
          (hsPkgs."hastache" or (buildDepError "hastache"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          ];
        buildable = true;
        };
      exes = {
        "scalp-webhooks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scalp-webhooks" or (buildDepError "scalp-webhooks"))
            (hsPkgs."Spock" or (buildDepError "Spock"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."rainbow" or (buildDepError "rainbow"))
            (hsPkgs."hastache" or (buildDepError "hastache"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scalp-webhooks" or (buildDepError "scalp-webhooks"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            ];
          buildable = true;
          };
        };
      };
    }