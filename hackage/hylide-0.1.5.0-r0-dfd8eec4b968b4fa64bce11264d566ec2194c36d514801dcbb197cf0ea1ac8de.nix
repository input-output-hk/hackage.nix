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
      identifier = { name = "hylide"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "freshdried@gmail.com";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/hylogen";
      url = "";
      synopsis = "WebGL live-coding environment for writing shaders with Hylogen";
      description = "WebGL live-coding environment for writing shaders with Hylogen";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hylogen" or (errorHandler.buildDepError "hylogen"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
        buildable = true;
        };
      exes = {
        "hylide" = {
          depends = [
            (hsPkgs."hylogen" or (errorHandler.buildDepError "hylogen"))
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
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }