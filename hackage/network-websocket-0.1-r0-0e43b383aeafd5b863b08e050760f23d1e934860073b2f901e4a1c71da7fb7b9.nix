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
      identifier = { name = "network-websocket"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Melanson <michael@michaelmelanson.net>";
      author = "Michael Melanson <michael@michaelmelanson.net>";
      homepage = "";
      url = "";
      synopsis = "WebSocket library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }