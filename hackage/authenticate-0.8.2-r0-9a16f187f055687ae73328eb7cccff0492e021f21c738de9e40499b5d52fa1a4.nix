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
      specVersion = "1.2";
      identifier = { name = "authenticate"; version = "0.8.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/authenticate/tree/master";
      url = "";
      synopsis = "Authentication methods for Haskell web applications.";
      description = "Focus is on third-party authentication methods, such as OpenID,\nrpxnow and Facebook.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
          (hsPkgs."data-object-json" or (errorHandler.buildDepError "data-object-json"))
          (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
        buildable = true;
        };
      };
    }