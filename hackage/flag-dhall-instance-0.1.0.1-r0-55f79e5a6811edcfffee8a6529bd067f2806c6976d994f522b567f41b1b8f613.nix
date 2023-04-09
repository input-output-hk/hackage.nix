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
      identifier = { name = "flag-dhall-instance"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2023 Homotopic.Tech Ltd";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "FromDhall and ToDhall instances for flag.";
      description = "FromDhall and ToDhall instances for flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."flag" or (errorHandler.buildDepError "flag"))
          ];
        buildable = true;
        };
      };
    }