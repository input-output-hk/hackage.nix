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
    flags = { network-uri = true; example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-auth-oauth2"; version = "0.1.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pat Brisbin <pat@thoughtbot.com>";
      author = "Tom Streller";
      homepage = "http://github.com/thoughtbot/yesod-auth-oauth2";
      url = "";
      synopsis = "OAuth 2.0 authentication plugins";
      description = "Library to authenticate with OAuth 2.0 for Yesod web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."authenticate" or (buildDepError "authenticate"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."hoauth2" or (buildDepError "hoauth2"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (if flags.network-uri
          then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        };
      exes = {
        "yesod-auth-oauth2-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."load-env" or (buildDepError "load-env"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-auth-oauth2" or (buildDepError "yesod-auth-oauth2"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod-auth-oauth2" or (buildDepError "yesod-auth-oauth2"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }