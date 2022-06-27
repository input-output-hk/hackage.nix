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
      specVersion = "3.0";
      identifier = { name = "nonempty-wrapper-aeson"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/nonempty-wrapper/nonempty-wrapper-aeson";
      url = "";
      synopsis = "aeson instances for 'NonEmpty'";
      description = "aeson instances for 'NonEmpty'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."nonempty-wrapper" or (errorHandler.buildDepError "nonempty-wrapper"))
          ];
        buildable = true;
        };
      tests = {
        "nonempty-wrapper-aeson-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nonempty-wrapper" or (errorHandler.buildDepError "nonempty-wrapper"))
            (hsPkgs."nonempty-wrapper-aeson" or (errorHandler.buildDepError "nonempty-wrapper-aeson"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            ];
          buildable = true;
          };
        };
      };
    }