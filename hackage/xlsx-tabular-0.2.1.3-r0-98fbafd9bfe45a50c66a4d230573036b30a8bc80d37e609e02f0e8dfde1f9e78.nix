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
        name = "xlsx-tabular";
        version = "0.2.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Koga Kazuo";
      maintainer = "Koga Kazuo <obiwanko@me.com>";
      author = "Koga Kazuo <obiwanko@me.com>";
      homepage = "https://github.com/kkazuo/xlsx-tabular";
      url = "";
      synopsis = "Xlsx table cell value extraction utility";
      description = "\nConvenience utility to read xlsx tabular cells.\n\nYou can extract the values from xlsx files\ntable rows to JSON format by the heuristics or\nyour custom function.";
      buildType = "Simple";
    };
    components = {
      "xlsx-tabular" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.xlsx)
        ];
      };
      tests = {
        "xlsx-tabular-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xlsx-tabular)
          ];
        };
      };
    };
  }