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
      specVersion = "1.12";
      identifier = { name = "wai-transformers"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Athan Clark";
      maintainer = "aclark@araliasoftware.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/wai-transformers#readme";
      url = "";
      synopsis = "Monad transformers for WAI and WebSockets";
      description = "Please see the README on Github at <https://github.com/athanclark/wai-transformers#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ];
        buildable = true;
      };
    };
  }