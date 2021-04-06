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
      identifier = { name = "hipsql-api"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 SimSpace";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/simspace/hipsql#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/simspace/hipsql#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          ];
        buildable = true;
        };
      };
    }