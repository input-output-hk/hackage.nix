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
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "95714623@qq.com";
      author = "e9571";
      homepage = "https://github.com/e9571/e9571-config-reader-haskell";
      url = "";
      synopsis = "Automatically read config.json from the current directory";
      description = "Zero-configuration JSON config loader";
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