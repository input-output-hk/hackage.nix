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
      specVersion = "2.0";
      identifier = { name = "moto-postgresql"; version = "0.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ren@ren!zone";
      author = "Renzo Carbonara";
      homepage = "https://gitlab.com/k0001/moto";
      url = "";
      synopsis = "PostgreSQL-based migrations registry for moto.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
          (hsPkgs."di-df1" or (errorHandler.buildDepError "di-df1"))
          (hsPkgs."moto" or (errorHandler.buildDepError "moto"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }