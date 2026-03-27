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
      identifier = { name = "ihp-datasync-typescript"; version = "1.5.0"; };
      license = "MIT";
      copyright = "(c) digitally induced GmbH";
      maintainer = "support@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "https://ihp.digitallyinduced.com/";
      url = "";
      synopsis = "TypeScript code generation for IHP DataSync";
      description = "Generates TypeScript type interfaces from the IHP Schema.sql";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ihp" or (errorHandler.buildDepError "ihp"))
          (hsPkgs."ihp-postgres-parser" or (errorHandler.buildDepError "ihp-postgres-parser"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
        ];
        buildable = true;
      };
      exes = {
        "generate-datasync-types" = {
          depends = [
            (hsPkgs."ihp-datasync-typescript" or (errorHandler.buildDepError "ihp-datasync-typescript"))
            (hsPkgs."ihp" or (errorHandler.buildDepError "ihp"))
            (hsPkgs."ihp-postgres-parser" or (errorHandler.buildDepError "ihp-postgres-parser"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."ihp-datasync-typescript" or (errorHandler.buildDepError "ihp-datasync-typescript"))
            (hsPkgs."ihp" or (errorHandler.buildDepError "ihp"))
            (hsPkgs."ihp-postgres-parser" or (errorHandler.buildDepError "ihp-postgres-parser"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }