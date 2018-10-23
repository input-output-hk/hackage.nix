{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hakyll-contrib-csv";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Erik Stevenson";
      maintainer = "eriknstevenson@gmail.com";
      author = "Erik Stevenson";
      homepage = "https://github.com/narrative/hakyll-contrib-csv#readme";
      url = "";
      synopsis = "Generate Html tables from Csv files";
      description = "A Hakyll extension for incorporating Csv data into your static site.";
      buildType = "Simple";
    };
    components = {
      "hakyll-contrib-csv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.hakyll)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hakyll-contrib-csv-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.hakyll-contrib-csv)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }