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
      specVersion = "1.6";
      identifier = { name = "wai-handler-launch"; version = "3.0.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "";
      url = "";
      synopsis = "Launch a web app in the default browser.";
      description = "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."process" or (errorHandler.buildDepError "process"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."Shell32" or (errorHandler.sysDepError "Shell32"))
          (pkgs."msvcrt" or (errorHandler.sysDepError "msvcrt"))
          ];
        buildable = true;
        };
      };
    }