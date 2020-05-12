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
      identifier = {
        name = "postgresql-common-persistent";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/postgresql-common#readme";
      url = "";
      synopsis = "Persistent compatibility for postgresql-common";
      description = "Please see the README on GitHub at <https://github.com/iand675/postgresql-common-persistent#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."postgresql-common" or (errorHandler.buildDepError "postgresql-common"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "postgresql-common-persistent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."postgresql-common" or (errorHandler.buildDepError "postgresql-common"))
            (hsPkgs."postgresql-common-persistent" or (errorHandler.buildDepError "postgresql-common-persistent"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }