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
      identifier = { name = "oauthenticated"; version = "0.1.3.3"; };
      license = "MIT";
      copyright = "2013 (c) Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "";
      url = "";
      synopsis = "Simple OAuth for http-client";
      description = "/Warning/: This software is pre 1.0 and thus its API may change very\ndynamically while updating only minor versions. This package will follow the\nPVP once it reaches version 1.0.\n\nOAuth is a popular protocol allowing servers to offer resources owned by some\nuser to a series of authorized clients securely. For instance, OAuth lets\nTwitter provide access to a user's private tweets to the Twitter client\nregistered on their phone.\n\n@oauthenticated@ is a Haskell library implementing OAuth protocols atop the\nminimalistic @http-client@ HTTP client library extracted from @http-conduit@.\n\"Network.OAuth\" offers simple functions for signing\n'Network.HTTP.Client.Request's along with tools for 'Network.OAuth.Cred'ential\nmanagement and 'Network.OAuth.Server' configuration. \"Network.OAuth.Simple\"\nprovides a slightly more heavy-weight interface which manages the necessary state\nand configuration using a monad transformer stack.\n\nThere's also an implementation of OAuth's three-legged credential acquisition\nprotocol built atop the \"Network.OAuth\" API. This can be handled in both\nconformant and old-style modes: conformant will reject server responses which\nare not conformant with RFC 5849 (which builds atop community version OAuth\n1.0a) while old-style better allows for less-than-compliant servers. See\n'Network.OAuth.Types.Params.Version' for more details.\n\nCurrently @oauthenticated@ only supports OAuth 1.0 and is in alpha. OAuth 2.0\nsupport is a potential goal, but it's unclear if it can be transparently\nsupported at a similar level of abstraction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }