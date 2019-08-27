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
      specVersion = "1.8";
      identifier = { name = "yesod-static"; version = "1.5.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Static file serving subsite for Yesod Web Framework.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-static>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."css-text" or (buildDepError "css-text"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            ];
          };
        };
      };
    }