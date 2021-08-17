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
      identifier = { name = "data-pdf-fieldreader"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2021 Scott Sedgwick";
      maintainer = "Scott Sedgwick <scott.sedgwick@gmail.com>";
      author = "Scott Sedgwick";
      homepage = "https://github.com/ScottSedgwick/Data.Pdf.FieldReader";
      url = "";
      synopsis = "Read PDF form fields";
      description = "Simple function to extract PDF form field values from a PDF file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      exes = {
        "pdfreader" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."data-pdf-fieldreader" or (errorHandler.buildDepError "data-pdf-fieldreader"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }