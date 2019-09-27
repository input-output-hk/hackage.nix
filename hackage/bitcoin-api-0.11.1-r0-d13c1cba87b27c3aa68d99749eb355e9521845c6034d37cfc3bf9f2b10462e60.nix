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
      identifier = { name = "bitcoin-api"; version = "0.11.1"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides access to the RPC API of Bitcoin Core";
      description = "The Bitcoin Core application provides an HTTP RPC interface for communication.\nThis library implements access to these functions. It builds on top of the\n`bitcoin-tx` and `bitcoin-script`, and as such provides an extremely flexible\nenvironment to create, manipulate and store transactions and custom scripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."hexstring" or (buildDepError "hexstring"))
          (hsPkgs."base58string" or (buildDepError "base58string"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."bitcoin-types" or (buildDepError "bitcoin-types"))
          (hsPkgs."bitcoin-block" or (buildDepError "bitcoin-block"))
          (hsPkgs."bitcoin-tx" or (buildDepError "bitcoin-tx"))
          (hsPkgs."bitcoin-script" or (buildDepError "bitcoin-script"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base58string" or (buildDepError "base58string"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bitcoin-tx" or (buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-script" or (buildDepError "bitcoin-script"))
            (hsPkgs."bitcoin-api" or (buildDepError "bitcoin-api"))
            ];
          buildable = true;
          };
        };
      };
    }