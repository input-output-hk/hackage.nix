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
    flags = { test-authentication = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "liblastfm"; version = "0.0.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Matvey Aksenov, Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "Wrapper to Lastfm API";
      description = "Simple but complete wrapper to Lastfm API. Can send some stuff and receive reponses from Lastfm. JSON/XML parsing is an exercise for the user.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."urlencoded" or (errorHandler.buildDepError "urlencoded"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "json-no-authentication" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."liblastfm" or (errorHandler.buildDepError "liblastfm"))
            ];
          buildable = true;
          };
        "json-authentication" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."liblastfm" or (errorHandler.buildDepError "liblastfm"))
            ];
          buildable = if !flags.test-authentication then false else true;
          };
        };
      };
    }