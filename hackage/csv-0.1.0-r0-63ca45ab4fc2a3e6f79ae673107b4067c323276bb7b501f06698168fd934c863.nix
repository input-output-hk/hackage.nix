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
      specVersion = "1.0";
      identifier = { name = "csv"; version = "0.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Jaap Weel, 2007";
      maintainer = "Jaap Weel <weel@ugcs.caltech.edu>";
      author = "Jaap Weel <weel@ugcs.caltech.edu>";
      homepage = "";
      url = "";
      synopsis = "CSV loader and dumper";
      description = "CSV loader and dumper\n\nThis library parses and dumps documents that are formatted\naccording to RFC 4180, \\\"The common Format and MIME Type for\nComma-Separated Values (CSV) Files\\\". This format is used, among\nmany other things, as a lingua franca for spreadsheets, and for\ncertain web services.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }