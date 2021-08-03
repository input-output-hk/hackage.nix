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
      specVersion = "2.4";
      identifier = { name = "postgresql-resilient"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "volpegabriel@gmail.com";
      author = "Gabriel Volpe";
      homepage = "";
      url = "";
      synopsis = "Automatic re-connection support for PostgreSQL";
      description = "Automatic re-connection support for PostgreSQL, built on top of postgresql-simple.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          ];
        buildable = true;
        };
      };
    }