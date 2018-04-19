{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
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
        homepage = "https://github.com/MackeyRMS/tsv2csv";
        url = "";
        synopsis = "Convert tsv to csv";
        description = "Convert tsv to csv";
        buildType = "Simple";
      };
      components = {
        tsv2csv = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.HUnit
          ];
        };
        exes = {
          tsv2csv = {
            depends  = [
              hsPkgs.base
              hsPkgs.tsv2csv
            ];
          };
        };
      };
    }