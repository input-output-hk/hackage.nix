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
      identifier = { name = "network-anonymous-tor"; version = "0.10.0"; };
      license = "MIT";
      copyright = "(c) 2014 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Haskell API for Tor anonymous networking";
      description = "This library providess an API that wraps around the Tor control port\nto create ad-hoc hidden services";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-simple" or (buildDepError "network-simple"))
          (hsPkgs."socks" or (buildDepError "socks"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."network-attoparsec" or (buildDepError "network-attoparsec"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."hexstring" or (buildDepError "hexstring"))
          (hsPkgs."base32string" or (buildDepError "base32string"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      exes = {
        "tor-relay" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-simple" or (buildDepError "network-simple"))
            (hsPkgs."splice" or (buildDepError "splice"))
            (hsPkgs."network-anonymous-tor" or (buildDepError "network-anonymous-tor"))
            ];
          };
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-simple" or (buildDepError "network-simple"))
            (hsPkgs."socks" or (buildDepError "socks"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base32string" or (buildDepError "base32string"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-attoparsec" or (buildDepError "hspec-attoparsec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."network-anonymous-tor" or (buildDepError "network-anonymous-tor"))
            ];
          };
        };
      };
    }