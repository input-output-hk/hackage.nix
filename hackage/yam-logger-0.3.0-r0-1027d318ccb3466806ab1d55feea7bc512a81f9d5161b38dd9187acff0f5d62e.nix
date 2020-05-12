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
      identifier = { name = "yam-logger"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "Yam Logger";
      description = "logger module for yam";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
          ];
        buildable = true;
        };
      };
    }