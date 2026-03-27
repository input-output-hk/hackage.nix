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
    flags = { fastbuild = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ihp-schema-compiler"; version = "1.5.0"; };
      license = "MIT";
      copyright = "(c) digitally induced GmbH";
      maintainer = "hello@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "https://ihp.digitallyinduced.com/";
      url = "";
      synopsis = "Lightweight schema compiler for IHP";
      description = "Compiles Schema.sql to Generated Types.hs for IHP applications. This is a minimal package with few dependencies, suitable for production builds that don't need the full ihp-ide.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."countable-inflections" or (errorHandler.buildDepError "countable-inflections"))
          (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
          (hsPkgs."ihp" or (errorHandler.buildDepError "ihp"))
          (hsPkgs."ihp-postgres-parser" or (errorHandler.buildDepError "ihp-postgres-parser"))
        ];
        buildable = true;
      };
      exes = {
        "build-generated-code" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."countable-inflections" or (errorHandler.buildDepError "countable-inflections"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."ihp" or (errorHandler.buildDepError "ihp"))
            (hsPkgs."ihp-postgres-parser" or (errorHandler.buildDepError "ihp-postgres-parser"))
            (hsPkgs."ihp-schema-compiler" or (errorHandler.buildDepError "ihp-schema-compiler"))
          ];
          buildable = true;
        };
      };
    };
  }