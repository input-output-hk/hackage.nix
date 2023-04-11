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
      identifier = {
        name = "version-natural-dhall-instance";
        version = "0.2.0.0";
        };
      license = "MIT";
      copyright = "2023 Homotopic.Tech Ltd";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "FromDhall and ToDhall instances for version-natural.";
      description = "FromDhall and ToDhall instances for version-natural.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."version-natural" or (errorHandler.buildDepError "version-natural"))
          ];
        buildable = true;
        };
      };
    }