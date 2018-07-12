{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "world-peace";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017-2018 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/world-peace";
        url = "";
        synopsis = "Open Union and Open Product Types";
        description = "Please see <https://github.com/cdepillabout/world-peace#readme README.md>.";
        buildType = "Simple";
      };
      components = {
        "world-peace" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.deepseq
            hsPkgs.profunctors
            hsPkgs.tagged
          ];
        };
        tests = {
          "world-peace-doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }