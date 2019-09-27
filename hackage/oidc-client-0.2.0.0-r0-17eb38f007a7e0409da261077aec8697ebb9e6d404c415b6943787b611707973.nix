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
    flags = { network-uri = true; build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "oidc-client"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Sho Kuroda";
      maintainer = "Sho Kuroda <krdlab@gmail.com>";
      author = "Sho Kuroda";
      homepage = "https://github.com/krdlab/haskell-oidc-client";
      url = "";
      synopsis = "OpenID Connect 1.0 library for RP";
      description = "This package supports implementing of an OpenID Connect 1.0 Relying Party.\n\nExamples: <https://github.com/krdlab/haskell-oidc-client/tree/master/examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."jose-jwt" or (buildDepError "jose-jwt"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "scotty-example" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."oidc-client" or (buildDepError "oidc-client"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."scotty-cookie" or (buildDepError "scotty-cookie"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."cprng-aes" or (buildDepError "cprng-aes"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            (hsPkgs."base32-bytestring" or (buildDepError "base32-bytestring"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      tests = {
        "oidc-client-spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."oidc-client" or (buildDepError "oidc-client"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            ];
          buildable = true;
          };
        };
      };
    }