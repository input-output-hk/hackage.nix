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
      identifier = { name = "sws"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2015 Derek Elkins";
      maintainer = "derek.a.elkins@gmail.com";
      author = "Derek Elkins";
      homepage = "";
      url = "";
      synopsis = "A simple web server for serving directories, similar to weborf.";
      description = "The main drivers for this application were Windows (and Linux) support and\nsecurity, and to a lesser extent performance.  Security is improved over\nweborf by using Haskell, supporting TLS, and explicitly NOT supporting CGIs\nof any kind.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sws" = {
          depends = [
            (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
            (hsPkgs."asn1-encoding" or (buildDepError "asn1-encoding"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."crypto-pubkey" or (buildDepError "crypto-pubkey"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."hourglass" or (buildDepError "hourglass"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."x509" or (buildDepError "x509"))
            ];
          };
        };
      };
    }