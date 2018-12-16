{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
      splitbase = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "spreadsheet";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Spreadsheet";
      url = "";
      synopsis = "Read and write spreadsheets from and to CSV files in a lazy way";
      description = "Read and write spreadsheets from and to files\ncontaining comma separated values (CSV) in a lazy way.\nSee also the\ncsv package <http://hackage.haskell.org/package/csv> and\n<http://www.xoltar.org/languages/haskell.html>,\n<http://www.xoltar.org/languages/haskell/CSV.hs>.\nBoth do not parse lazy.\nReading from other source than plain 'String's could be easily added.\n\nIf you install this package by\n\ncabal install -fbuildExamples\n\nthen an example program is compiled and installed, too.\nThis program fills a template text using data from a CSV file.\nE.g. given a file @template.txt@ with content\n\n> Name: FIRSTNAME SURNAME\n> Born: BIRTH\n\nand @names.csv@ with content\n\n> \"FIRSTNAME\",\"SURNAME\",BIRTH\n> \"Georg\",\"Cantor\",1845\n> \"Haskell\",\"Curry\",1900\n> \"Ada\",\"Lovelace\",1815\n\nthe call\n\n> csvreplace --template=template.txt <names.csv\n\nproduces the output\n\n> Name: Georg Cantor\n> Born: 1845\n> Name: Haskell Curry\n> Born: 1900\n> Name: Ada Lovelace\n> Born: 1815\n\nFor similar (non-Haskell) programs see @cut@, @csvfix@, @csvtool@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.utility-ht)
          (hsPkgs.transformers)
          (hsPkgs.explicit-exception)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "csvreplace" = {
          depends = pkgs.lib.optional (flags.buildexamples) (hsPkgs.bytestring);
        };
      };
    };
  }