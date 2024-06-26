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
      identifier = { name = "ksystools"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "kyle@imap.cc";
      author = "Kyle Isom";
      homepage = "https://github.com/kisom/ksystools#readme";
      url = "";
      synopsis = "System management tooling.";
      description = "For now, this is a playground for systems programming\nwith the intent of building a set of libraries and\ntools for managing my Unix systems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
    };
  }