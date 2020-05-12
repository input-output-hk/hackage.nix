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
      specVersion = "1.6.0.1";
      identifier = { name = "dingo-core"; version = "0.0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Dingo is a Rich Internet Application platform based on the Warp web server.";
      description = "Dingo is a Rich Internet Application platform based on the Warp web server. It allows you to write code which looks very much like regular GUI code and have it work in the browser.\nThis package contains the core modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson-native" or (errorHandler.buildDepError "aeson-native"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-textual-native" or (errorHandler.buildDepError "blaze-textual-native"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."strict-concurrency" or (errorHandler.buildDepError "strict-concurrency"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."web-css" or (errorHandler.buildDepError "web-css"))
          ];
        buildable = true;
        };
      };
    }