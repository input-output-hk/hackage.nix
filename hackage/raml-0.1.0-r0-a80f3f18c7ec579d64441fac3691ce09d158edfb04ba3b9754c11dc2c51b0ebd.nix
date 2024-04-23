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
      identifier = { name = "raml"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Fergus Noble";
      maintainer = "Fergus Noble <fergusnoble@gmail.com>";
      author = "Fergus Noble";
      homepage = "https://github.com/fnoble/raml";
      url = "";
      synopsis = "RESTful API Modeling Language (RAML) library for Haskell";
      description = "RESTful API Modeling Language (RAML) library for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }