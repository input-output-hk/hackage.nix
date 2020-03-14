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
      identifier = { name = "plaid"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sasa Bogicevic";
      maintainer = "Sasha Bogicevic <sasa.bogicevic@pm.me>";
      author = "Sasha Bogicevic";
      homepage = "https://github.com/v0d1ch/plaid#readme";
      url = "";
      synopsis = "Plaid.com api integration library";
      description = "@Plaid@ is a library for interacting with https://plaid.com\n\nPlaid.com connects the users to their bank accounts via the app and this library provides programmatic\naccess to all these features.\n\nPlease take a look at examples folder to easily get started.\n\nHaskell examples in the plaid [documentation] (https://plaid.com/docs) come from this library.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."casing" or (buildDepError "casing"))
          (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
          ];
        buildable = true;
        };
      exes = {
        "plaid" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."plaid" or (buildDepError "plaid"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."plaid" or (buildDepError "plaid"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            ];
          buildable = true;
          };
        };
      };
    }