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
      specVersion = "1.10";
      identifier = { name = "hylide"; version = "0.1.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "freshdried@gmail.com";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/hylide";
      url = "";
      synopsis = "WebGL renderer for livecoding shaders with Hylogen";
      description = "WebGL renderer for livecoding shaders with Hylogen";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hylogen" or (errorHandler.buildDepError "hylogen"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
        buildable = true;
        };
      exes = {
        "hylide" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hylide" or (errorHandler.buildDepError "hylide"))
            (hsPkgs."hylogen" or (errorHandler.buildDepError "hylogen"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }