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
      identifier = { name = "ihp-migrate"; version = "1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "support@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "";
      url = "";
      synopsis = "Provides the IHP migrate binary";
      description = "Postgres DB migrations for IHP applications";
      buildType = "Simple";
    };
    components = {
      exes = {
        "migrate" = {
          depends = [
            (hsPkgs."ihp" or (errorHandler.buildDepError "ihp"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
          ];
          buildable = true;
        };
      };
    };
  }