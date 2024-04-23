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
      identifier = { name = "filepath-io-access"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "bheklilr2@gmail.com";
      author = "Aaron Stevens";
      homepage = "";
      url = "";
      synopsis = "IO Access for filepath";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."base-io-access" or (errorHandler.buildDepError "base-io-access"))
        ];
        buildable = true;
      };
    };
  }