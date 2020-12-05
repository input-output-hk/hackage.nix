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
        name = "postgresql-tx-squeal-compat-simple";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2020 SimSpace";
      maintainer = "jasonpshipman@gmail.com";
      author = "Jason Shipman";
      homepage = "https://github.com/simspace/postgresql-tx#readme";
      url = "";
      synopsis = "Connection interop from postgresql-simple connections to postgresql-libpq connections.";
      description = "Please see the README on GitHub at <https://github.com/simspace/postgresql-tx#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."postgresql-tx-squeal" or (errorHandler.buildDepError "postgresql-tx-squeal"))
          ];
        buildable = true;
        };
      };
    }