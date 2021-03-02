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
      specVersion = "1.0";
      identifier = { name = "EventSocket"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vulpyne+haskelleventsocket@teliax.com";
      author = "Vulpyne @ Teliax ";
      homepage = "";
      url = "";
      synopsis = "Interfaces with FreeSwitch Event Socket.";
      description = "Interfaces with FreeSwitch Event Socket. This should be considered an alpha release and has not been tested extensively.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }