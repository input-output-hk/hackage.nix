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
      identifier = { name = "websockets-json"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "2022 KtorZ";
      maintainer = "KtorZ <matthias.benkort@gmail.com>";
      author = "KtorZ <matthias.benkort@gmail.com>";
      homepage = "https://github.com/cardanosolutions/kupo#readme";
      url = "";
      synopsis = "Extras for working with websockets & JSON.";
      description = "Please see the README on GitHub at <https://github.com/cardanosolutions/kupo/tree/master/server/modules/websockets-json>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ];
        buildable = true;
      };
    };
  }