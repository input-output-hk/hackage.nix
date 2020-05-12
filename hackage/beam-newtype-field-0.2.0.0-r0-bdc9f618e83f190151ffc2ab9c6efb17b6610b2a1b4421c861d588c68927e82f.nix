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
      specVersion = "1.10";
      identifier = { name = "beam-newtype-field"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/dbfield#readme";
      url = "";
      synopsis = "A newtype for wrapping newtypes into beam schemas";
      description = "Please see the README on GitHub at <https://github.com/jappeace/dbfield#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-migrate" or (errorHandler.buildDepError "beam-migrate"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          ];
        buildable = true;
        };
      };
    }