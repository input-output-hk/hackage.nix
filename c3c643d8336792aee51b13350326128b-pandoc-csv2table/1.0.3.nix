{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc-csv2table";
        version = "1.0.3";
      };
      license = "MIT";
      copyright = "(c) 2015 Wasif Hasan Baig";
      maintainer = "Wasif Hasan Baig <pr.wasif@gmail.com>";
      author = "Wasif Hasan Baig <pr.wasif@gmail.com>";
      homepage = "https://github.com/baig/pandoc-csv2table-filter";
      url = "";
      synopsis = "Convert CSV to Pandoc Table Markdown";
      description = "A Pandoc filter that replaces image inline or fenced code\nblocks with pandoc table markdown. CSV contents will be\nparsed by the pandoc markdown reader.";
      buildType = "Simple";
    };
    components = {
      "pandoc-csv2table" = {
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