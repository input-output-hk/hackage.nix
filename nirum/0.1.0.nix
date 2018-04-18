{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nirum";
          version = "0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2016 Nirum team";
        maintainer = "Nirum team";
        author = "Nirum team";
        homepage = "https://github.com/spoqa/nirum";
        url = "";
        synopsis = "Distributed object framework built on top of\nREST HTTP and JSON";
        description = "Distributed object framework for microservices,\nbuilt on top of RESTful HTTP and JSON";
        buildType = "Simple";
      };
      components = {
        nirum = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.interpolatedstring-perl6
            hsPkgs.megaparsec
            hsPkgs.semver
            hsPkgs.text
          ];
        };
        exes = {
          nirum = {
            depends  = [
              hsPkgs.base
              hsPkgs.nirum
            ];
          };
          nirum-static = {
            depends  = [
              hsPkgs.base
              hsPkgs.nirum
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-meta
              hsPkgs.interpolatedstring-perl6
              hsPkgs.megaparsec
              hsPkgs.nirum
              hsPkgs.process
              hsPkgs.semigroups
              hsPkgs.semver
              hsPkgs.temporary
              hsPkgs.text
            ];
          };
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }