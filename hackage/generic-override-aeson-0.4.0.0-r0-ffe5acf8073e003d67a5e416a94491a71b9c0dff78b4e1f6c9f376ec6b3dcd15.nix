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
      identifier = { name = "generic-override-aeson"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Estatico Studios LLC";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/estatico/generic-override#readme";
      url = "";
      synopsis = "Provides orphan instances necessary for integrating generic-override and aeson";
      description = "Please see the README on GitHub at <https://github.com/estatico/generic-override#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-override" or (errorHandler.buildDepError "generic-override"))
          ];
        buildable = true;
        };
      tests = {
        "generic-override-aeson-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-override" or (errorHandler.buildDepError "generic-override"))
            (hsPkgs."generic-override-aeson" or (errorHandler.buildDepError "generic-override-aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }