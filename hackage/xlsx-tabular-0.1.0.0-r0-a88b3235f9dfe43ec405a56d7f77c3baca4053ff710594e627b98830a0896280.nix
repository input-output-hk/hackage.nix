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
        name = "xlsx-tabular";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Kazuo Koga";
      maintainer = "obiwanko@me.com";
      author = "Kazuo Koga";
      homepage = "http://github.com/kkazuo/xlsx-tabular#readme";
      url = "";
      synopsis = "Xlsx table decode utility";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
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