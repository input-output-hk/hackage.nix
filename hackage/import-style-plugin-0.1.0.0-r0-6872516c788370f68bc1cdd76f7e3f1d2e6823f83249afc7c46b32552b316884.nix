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
      identifier = { name = "import-style-plugin"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "goosedb@yandex.ru";
      author = "goosedb";
      homepage = "https://github.com/goosedb/import-style-plugin";
      url = "";
      synopsis = "Helps maintain consistency of imports";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
    };
  }