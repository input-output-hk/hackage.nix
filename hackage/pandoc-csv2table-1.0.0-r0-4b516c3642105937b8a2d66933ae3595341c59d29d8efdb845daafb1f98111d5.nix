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
      specVersion = "1.10";
      identifier = {
        name = "pandoc-csv2table";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Wasif Hasan Baig";
      maintainer = "Wasif Hasan Baig <pr.wasif@gmail.com>";
      author = "Wasif Hasan Baig <pr.wasif@gmail.com>";
      homepage = "https://github.com/baig/pandoc-csv2table-filter";
      url = "";
      synopsis = "Convert CSV to Pandoc Table Markdown";
      description = "A Pandoc filter that replaces image inline or fenced code\nblocks with pandoc markdown tables.\n\nImage links must have a \"csv\" extension.\nInclude the csv file in markdown as\n\n> ![This is the table caption.](table.csv)\n\nYou can also use fenced code blocks to reference an\nexternal CSV file using the \"source\" attribute.\n\n> ```{.table caption=\"This is the **caption**\" source=\"table.csv\"}\n> ```\n\nYou can include the CSV contents inside fenced code blocks\nand omit the source attribute.\n\n> ```{.table caption=\"This is the **caption**\"}\n> Fruit, Quantity, Price\n> apples, 15, 3.24\n> oranges, 12, 2.22\n> ```\n\nCSV contents will be parsed by the pandoc markdown reader.\n\nYou can see a rendered PDF file with tables generated from\nCSV files at <https://github.com/baig/pandoc-csv2table-filter/blob/master/Examples/example.pdf Example>.\n\nFor more information, see <https://github.com/baig/pandoc-csv2table-filter/blob/master/README.md README>\nat project's source repository.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.csv)
          (hsPkgs.text)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
        ];
      };
      exes = {
        "pandoc-csv2table" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.csv)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-csv2table)
          ];
        };
      };
    };
  }