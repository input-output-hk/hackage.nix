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
    flags = { tls = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mighttpd2"; version = "3.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
      url = "";
      synopsis = "High performance web server on WAI/warp";
      description = "High performance web server to handle static\nfiles and CGI on WAI/warp.\nReverse proxy functionality is also provided\nto connect web applications behind.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."auto-update" or (buildDepError "auto-update"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."byteorder" or (buildDepError "byteorder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-date" or (buildDepError "http-date"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."io-choice" or (buildDepError "io-choice"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unix-time" or (buildDepError "unix-time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-app-file-cgi" or (buildDepError "wai-app-file-cgi"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "mighty" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-date" or (buildDepError "http-date"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."mighttpd2" or (buildDepError "mighttpd2"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-app-file-cgi" or (buildDepError "wai-app-file-cgi"))
            (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.tls) (hsPkgs."async" or (buildDepError "async"))) ++ (pkgs.lib).optionals (flags.tls) [
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            ];
          };
        "mighty-mkindex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        "mightyctl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."mighttpd2" or (buildDepError "mighttpd2"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mighttpd2" or (buildDepError "mighttpd2"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            ] ++ (pkgs.lib).optionals (flags.tls) [
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            ];
          };
        };
      };
    }