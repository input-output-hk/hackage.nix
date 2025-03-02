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
      specVersion = "1.18";
      identifier = { name = "mysql-json-table"; version = "0.1.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      author = "";
      homepage = "https://codeberg.org/daniel-casanueva/mysql-json-table";
      url = "";
      synopsis = "Using MySQL to store id-to-json tables.";
      description = "Visit the homepage for more information, or read the readme.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      exes = {
        "mysql-json-table-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
            (hsPkgs."mysql-json-table" or (errorHandler.buildDepError "mysql-json-table"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
          buildable = true;
        };
      };
    };
  }