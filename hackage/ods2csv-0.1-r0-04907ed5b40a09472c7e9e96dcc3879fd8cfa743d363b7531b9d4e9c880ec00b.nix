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
      identifier = { name = "ods2csv"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/ods2csv";
      url = "";
      synopsis = "Convert Open Document Spreadsheet ODS to CSV";
      description = "Usually you would convert ODS to CSV via @libreoffice --headless@\nbut this conflicts with running GUI instances of @libreoffice@\nand requires a full libreoffice installation\nand has incomprehensible CSV export command-line options\nand selection of individual tables is inferior.\n\nThis program quickly scans through a FODS or ODS document using a XML parser\nand watches only the necessary data.\nIt does not interpret or evaluate the formula data,\ninstead it assumes that the contained evaluated values are correct.\nThis is true, if the file was saved from LibreOffice\nbut might not be true if generated or manipulated by other tools.\n\nYou can feed generated CSV files to LaTeX @datatool.sty@, @csvmidi@,\nor @csvreplace@ from Haskell package @spreadsheet@.\n\nExample runs of the program:\n\n> ods2csv --list-tables input.ods\n\n> ods2csv --sheetnumber=1 input.ods >output.csv\n\n> ods2csv --sheetname=\"Table 2\" --separator=TAB input.ods >output.tsv\n\n> ods2csv --sheetnumber=2 input.fods >output.csv\n\n> ods2csv --sheetnumber=2 <input.fods >output.csv\n\nThe program supports UTF-8 encoding for FODS/XML input,\nand applies Latin1 decoding otherwise.\nFor writing CSV it uses the system's default encoding.\n\nToDo: Provide FODS parser as library function, maybe in @spreadsheet@.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ods2csv" = {
          depends = [
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."spreadsheet" or (errorHandler.buildDepError "spreadsheet"))
            (hsPkgs."tagchup" or (errorHandler.buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (errorHandler.buildDepError "xml-basic"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }