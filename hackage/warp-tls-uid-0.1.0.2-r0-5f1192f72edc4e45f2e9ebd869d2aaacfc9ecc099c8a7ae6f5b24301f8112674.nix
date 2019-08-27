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
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "warp-tls-uid"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "set group and user id before running server";
      description = "> runTLSSocketWithID tlss settings sock (\"user\", \"bob\") app";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."tls-extra" or (buildDepError "tls-extra"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."certificate" or (buildDepError "certificate"))
          (hsPkgs."pem" or (buildDepError "pem"))
          (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
          ];
        };
      exes = {
        "testServer" = {
          depends = [
            (hsPkgs."warp-tls-uid" or (buildDepError "warp-tls-uid"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."tls-extra" or (buildDepError "tls-extra"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."certificate" or (buildDepError "certificate"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        };
      };
    }