{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-static"; version = "1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Static file serving subsite for Yesod Web Framework.";
      description = "Static file serving subsite for Yesod Web Framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."cryptohash-conduit" or (errorHandler.buildDepError "cryptohash-conduit"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."css-text" or (errorHandler.buildDepError "css-text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
            (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cryptohash-conduit" or (errorHandler.buildDepError "cryptohash-conduit"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
            (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
            (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            ];
          buildable = true;
          };
        };
      };
    }