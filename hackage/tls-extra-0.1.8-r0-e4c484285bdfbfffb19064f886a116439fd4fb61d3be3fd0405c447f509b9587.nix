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
    flags = { test = false; bench = false; executable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tls-extra"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls-extra";
      url = "";
      synopsis = "TLS extra default values and helpers";
      description = "a set of extra definitions, default values and helpers for tls.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."cryptocipher" or (buildDepError "cryptocipher"))
          (hsPkgs."certificate" or (buildDepError "certificate"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "stunnel" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        "checkciphers" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        "retrievecertificate" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        "Tests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }