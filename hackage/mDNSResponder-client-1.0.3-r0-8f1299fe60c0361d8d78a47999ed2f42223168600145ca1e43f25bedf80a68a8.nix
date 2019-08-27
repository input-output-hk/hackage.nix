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
      identifier = { name = "mDNSResponder-client"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Obsidian Systems LLC";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/obsidiansystems/mDNSResponder-client";
      url = "";
      synopsis = "Library for talking to the mDNSResponder daemon.";
      description = "On OS X, iOS, and Bonjour for Windows, mDNSResponder is\nthe daemon responsible for providing the Bonjour services.\nThis is a client implementation directly on top of the\n(not documented outside of the open source code) Unix\ndomain socket protocol, as the \"low level\" dns_sd C API\nprovided by Apple relies on heavy use of callbacks and\ndoes not allow for nonblocking connections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network-msg" or (buildDepError "network-msg"))
          (hsPkgs."ctrie" or (buildDepError "ctrie"))
          (hsPkgs."data-endian" or (buildDepError "data-endian"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."mDNSResponder-client" or (buildDepError "mDNSResponder-client"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        };
      };
    }