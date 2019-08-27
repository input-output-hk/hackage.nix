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
      specVersion = "1.10";
      identifier = { name = "hoauth2"; version = "1.8.5"; };
      license = "BSD-3-Clause";
      copyright = "Haisheng Wu";
      maintainer = "Haisheng Wu <freizl@gmail.com>";
      author = "Haisheng Wu";
      homepage = "https://github.com/freizl/hoauth2";
      url = "";
      synopsis = "Haskell OAuth2 authentication client";
      description = "Haskell OAuth2 authentication client. Tested with the following services:\n\n* AzureAD: <https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-protocols-oauth-code>\n\n* Google: <https://developers.google.com/accounts/docs/OAuth2WebServer>\n\n* Github: <http://developer.github.com/v3/oauth/>\n\n* Facebook: <http://developers.facebook.com/docs/facebook-login/>\n\n* Fitbit: <http://dev.fitbit.com/docs/oauth2/>\n\n* StackExchange: <https://api.stackexchange.com/docs/authentication>\n\n* DropBox: <https://www.dropbox.com/developers/reference/oauth-guide>\n\n* Weibo: <http://open.weibo.com/wiki/Oauth2>\n\n* Douban: <http://developers.douban.com/wiki/?title=oauth2>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
          (hsPkgs."uri-bytestring-aeson" or (buildDepError "uri-bytestring-aeson"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          ];
        };
      exes = {
        "demo-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."mustache" or (buildDepError "mustache"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hoauth2" or (buildDepError "hoauth2"))
            ];
          };
        };
      };
    }