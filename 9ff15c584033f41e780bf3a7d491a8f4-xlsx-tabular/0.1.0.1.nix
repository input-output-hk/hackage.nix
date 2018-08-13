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
        name = "xlsx-tabular";
        version = "0.1.0.1";
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