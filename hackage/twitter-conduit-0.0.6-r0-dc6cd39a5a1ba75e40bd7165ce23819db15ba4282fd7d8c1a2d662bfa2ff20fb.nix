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
    flags = {
      network-uri = true;
      lens-aeson = true;
      build-samples = false;
      use-debug-output = false;
      run-integrated-test = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "twitter-conduit"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takahiro HIMURA <taka@himura.jp>";
      author = "HATTORI Hiroki, Hideyuki Tanaka, Takahiro HIMURA";
      homepage = "https://github.com/himura/twitter-conduit";
      url = "";
      synopsis = "Twitter API package with conduit interface and Streaming API support.";
      description = "This package provides bindings to Twitter's APIs (see <https://dev.twitter.com/>).\n\nThis package uses the http-conduit package for accessing the Twitter API (see <http://hackage.haskell.org/package/http-conduit>).\nThis package also depends on the twitter-types package (see <http://hackage.haskell.org/package/twitter-types>).\n\nYou can find basic examples in the <https://github.com/himura/twitter-conduit/tree/master/sample> directory.\n\nThis package is under development. If you find something that has not been implemented yet, please send a pull request or open an issue on GitHub.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."twitter-types" or (buildDepError "twitter-types"))
          ] ++ (if flags.lens-aeson
          then [
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ]
          else [ (hsPkgs."lens" or (buildDepError "lens")) ]);
        buildable = true;
        };
      exes = {
        "simple" = {
          depends = (pkgs.lib).optionals (!(!flags.build-samples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-types" or (buildDepError "twitter-types"))
            (hsPkgs."twitter-conduit" or (buildDepError "twitter-conduit"))
            (hsPkgs."twitter-types" or (buildDepError "twitter-types"))
            ];
          buildable = if !flags.build-samples then false else true;
          };
        "userstream" = {
          depends = (pkgs.lib).optionals (!(!flags.build-samples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-conduit" or (buildDepError "twitter-conduit"))
            (hsPkgs."twitter-types" or (buildDepError "twitter-types"))
            ] ++ (if flags.network-uri
            then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = if !flags.build-samples then false else true;
          };
        "oauth_callback" = {
          depends = (pkgs.lib).optionals (!(!flags.build-samples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-conduit" or (buildDepError "twitter-conduit"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            ];
          buildable = if !flags.build-samples then false else true;
          };
        "oauth_pin" = {
          depends = (pkgs.lib).optionals (!(!flags.build-samples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-conduit" or (buildDepError "twitter-conduit"))
            ];
          buildable = if !flags.build-samples then false else true;
          };
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec_main" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."twitter-types" or (buildDepError "twitter-types"))
            ] ++ (if flags.network-uri
            then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (flags.lens-aeson) (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"));
          buildable = true;
          };
        };
      };
    }