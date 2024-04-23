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
      identifier = { name = "ods2csv"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/ods2csv";
      url = "";
      synopsis = "Convert Open Document Spreadsheet ODS to CSV";
      description = "Usually you would convert ODS to CSV via @libreoffice --headless@\nbut this conflicts with running GUI instances of @libreoffice@\nand requires a full libreoffice installation\nand has incomprehensible CSV export command-line options\nand selection of individual tables is inferior.\n\nThis program quickly scans through a FODS document using a XML parser\nand watches only the necessary data.\nIt does not interpret or evaluate the formula data,\ninstead it assumes that the contained evaluated values are correct.\nThis is true, if the file was saved from LibreOffice\nbut might not be true if generated or manipulated by other tools.\n\nToDo: Provide FODS parser as library function, maybe in @spreadsheet@.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ods2csv" = {
          depends = [
            (hsPkgs."spreadsheet" or (errorHandler.buildDepError "spreadsheet"))
            (hsPkgs."tagchup" or (errorHandler.buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (errorHandler.buildDepError "xml-basic"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }