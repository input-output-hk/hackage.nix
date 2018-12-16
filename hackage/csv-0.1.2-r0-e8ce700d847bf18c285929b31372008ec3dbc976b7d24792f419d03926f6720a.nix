{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "csv";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "Jaap Weel, 2007";
      maintainer = "Jaap Weel <weel@ugcs.caltech.edu>";
      author = "Jaap Weel <weel@ugcs.caltech.edu>";
      homepage = "";
      url = "";
      synopsis = "CSV loader and dumper";
      description = "CSV loader and dumper\n\nThis library parses and dumps documents that are formatted\naccording to RFC 4180, \\\"The common Format and MIME Type for\nComma-Separated Values (CSV) Files\\\". This format is used, among\nmany other things, as a lingua franca for spreadsheets, and for\ncertain web services.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.filepath)
          (hsPkgs.base)
        ];
      };
    };
  }