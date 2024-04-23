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
      identifier = { name = "hszephyr"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nelson Elhage <nelhage@nelhage.com>";
      author = "Nelson Elhage <nelhage@nelhage.com>";
      homepage = "";
      url = "";
      synopsis = "Simple libzephyr bindings";
      description = "Network.Zephyr provides haskell bindings to MIT's \"Zephyr\" instant\nmessaging / notification service.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        libs = [
          (pkgs."zephyr" or (errorHandler.sysDepError "zephyr"))
          (pkgs."com_err" or (errorHandler.sysDepError "com_err"))
        ];
        buildable = true;
      };
    };
  }