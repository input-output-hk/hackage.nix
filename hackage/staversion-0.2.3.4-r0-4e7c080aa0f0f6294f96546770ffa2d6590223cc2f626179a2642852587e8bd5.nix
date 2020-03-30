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
    flags = { network-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "staversion"; version = "0.2.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/staversion";
      url = "";
      synopsis = "What version is the package X in stackage lts-Y.ZZ?";
      description = "A command-line tool to look for version numbers for Haskell packages in specific stackage resolvers. See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "staversion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."staversion" or (buildDepError "staversion"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."staversion" or (buildDepError "staversion"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            ];
          buildable = true;
          };
        "network-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."staversion" or (buildDepError "staversion"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = if !flags.network-test then false else true;
          };
        };
      };
    }