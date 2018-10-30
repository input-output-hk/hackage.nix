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
        name = "tsv2csv";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bobgru@mackeycorp.com";
      author = "bobgru";
      homepage = "";
      url = "";
      synopsis = "Convert tsv to csv";
      description = "Convert tsv to csv";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.HUnit)
        ];
      };
      exes = {
        "tsv2csv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tsv2csv)
          ];
        };
      };
    };
  }