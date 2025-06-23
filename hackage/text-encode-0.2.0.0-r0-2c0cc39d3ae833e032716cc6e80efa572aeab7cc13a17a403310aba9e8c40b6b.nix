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
      identifier = { name = "text-encode"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright Daniel Brice";
      maintainer = "danielbrice@gmail.com";
      author = "Daniel Brice";
      homepage = "https://github.com/friedbrice/text-encode#readme";
      url = "";
      synopsis = "Classes and newtypes for deriving uniform textual encodings.";
      description = "Classes and newtypes for deriving uniform textual encodings.\nSee the Text.Encode module documentation for details and usage examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
        ];
        buildable = true;
      };
      sublibs = {
        "text-encode-aeson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."text-encode" or (errorHandler.buildDepError "text-encode"))
          ];
          buildable = true;
        };
        "text-encode-cassava" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."text-encode" or (errorHandler.buildDepError "text-encode"))
          ];
          buildable = true;
        };
        "text-encode-http-api-data" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."text-encode" or (errorHandler.buildDepError "text-encode"))
          ];
          buildable = true;
        };
        "text-encode-persistent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."text-encode" or (errorHandler.buildDepError "text-encode"))
          ];
          buildable = true;
        };
        "text-encode-postgresql-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."text-encode" or (errorHandler.buildDepError "text-encode"))
          ];
          buildable = true;
        };
        "text-encode-sqlite-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."text-encode" or (errorHandler.buildDepError "text-encode"))
          ];
          buildable = true;
        };
      };
      tests = {
        "dev" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          ];
          buildable = true;
        };
      };
    };
  }