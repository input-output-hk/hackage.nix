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
      identifier = { name = "sized-wrapper-aeson"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/sized-wrapper/sized-wrapper-aeson";
      url = "";
      synopsis = "aeson instances for 'Sized'";
      description = "aeson instances for 'Sized'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."sized-wrapper" or (errorHandler.buildDepError "sized-wrapper"))
          ];
        buildable = true;
        };
      tests = {
        "sized-wrapper-aeson-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sized-wrapper" or (errorHandler.buildDepError "sized-wrapper"))
            (hsPkgs."sized-wrapper-aeson" or (errorHandler.buildDepError "sized-wrapper-aeson"))
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