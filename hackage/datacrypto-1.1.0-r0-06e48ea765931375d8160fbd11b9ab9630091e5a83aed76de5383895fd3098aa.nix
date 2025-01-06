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
      identifier = { name = "datacrypto"; version = "1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "None";
      author = "jb@doctorbirch.com";
      homepage = "";
      url = "";
      synopsis = "Encryption library";
      description = "Block cipher encryption library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }