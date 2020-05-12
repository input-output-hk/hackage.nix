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
      specVersion = "1.8";
      identifier = {
        name = "network-transport-composed";
        version = "0.2.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, watson.timothy@gmail.com";
      author = "Edsko de Vries";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "Compose network transports";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          ];
        buildable = true;
        };
      };
    }