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
      identifier = { name = "Hach"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov <malikov.d.y@gmail.com>";
      author = "Matvey Aksenov,\nDmitry Malikov";
      homepage = "http://github.com/dmalikov/HaCh";
      url = "";
      synopsis = "Simple chat";
      description = "Simple chat";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "hach-client" = { buildable = true; };
        "hach-nclient" = {
          depends = [
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
            ];
          buildable = true;
          };
        "hach-server" = { buildable = true; };
        };
      };
    }