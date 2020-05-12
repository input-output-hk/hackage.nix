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
      identifier = { name = "wai-handler-launch"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "";
      url = "";
      synopsis = "Launch a web app in the default browser.";
      description = "This handles cross-platform launching and inserts Javascript code to ping the server. When the server no longer receives pings, it shuts down.";
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
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
          (hsPkgs."zlib-enum" or (errorHandler.buildDepError "zlib-enum"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (!system.isOsx) (hsPkgs."process" or (errorHandler.buildDepError "process")));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."Shell32" or (errorHandler.sysDepError "Shell32"));
        buildable = true;
        };
      };
    }