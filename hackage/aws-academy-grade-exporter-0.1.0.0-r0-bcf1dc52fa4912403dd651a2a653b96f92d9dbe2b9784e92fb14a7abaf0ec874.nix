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
      identifier = {
        name = "aws-academy-grade-exporter";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "goussasalexander@gmail.com";
      author = "Alexander Goussas";
      homepage = "https://github.com/aloussase/aws-academy-grade-exporter-hs";
      url = "";
      synopsis = "Export grades from AWS Academy to different formats";
      description = "A CLI tool for exporting grades from AWS Academy courses to various formats and sinks.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "aws-academy-grade-exporter" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }