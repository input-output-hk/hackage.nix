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
        name = "tonatona-google-server-api";
        version = "0.3.0.0";
        };
      license = "MIT";
      copyright = "2019 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/tonatona-google-server-api#readme";
      url = "";
      synopsis = "tonatona plugin for google-server-api";
      description = "Tonatona plugin for [google-server-api](https://hackage.haskell.org/package/google-server-api). This package provides a tonatona plugin to use Google API for server to server applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."google-server-api" or (errorHandler.buildDepError "google-server-api"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."tonalude" or (errorHandler.buildDepError "tonalude"))
          (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
          (hsPkgs."tonatona" or (errorHandler.buildDepError "tonatona"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."google-server-api" or (errorHandler.buildDepError "google-server-api"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tonalude" or (errorHandler.buildDepError "tonalude"))
            (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
            (hsPkgs."tonatona" or (errorHandler.buildDepError "tonatona"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."google-server-api" or (errorHandler.buildDepError "google-server-api"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tonalude" or (errorHandler.buildDepError "tonalude"))
            (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
            (hsPkgs."tonatona" or (errorHandler.buildDepError "tonatona"))
            ];
          buildable = true;
          };
        };
      };
    }