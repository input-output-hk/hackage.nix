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
      specVersion = "2.2";
      identifier = {
        name = "e9571-config-reader-haskell";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "95714623@qq.com";
      author = "e9571";
      homepage = "https://github.com/e9571/e9571-config-reader-haskell";
      url = "";
      synopsis = "Automatically read config.json from the current directory";
      description = "Automatically discover and parse a config.json file in the current working directory\nor any of its parent directories. No need to manually pass file paths. Built on top\nof aeson, it provides a simple `getConfig :: FromJSON a => IO a` function that also\nsupports default values when fields are missing in the JSON file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "simple-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."e9571-config-reader-haskell" or (errorHandler.buildDepError "e9571-config-reader-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }