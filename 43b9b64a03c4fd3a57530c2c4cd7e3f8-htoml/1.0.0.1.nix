{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "htoml";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2016 Cies Breijs";
        maintainer = "Cies Breijs <cies % kde ! nl>";
        author = "Cies Breijs";
        homepage = "https://github.com/cies/htoml";
        url = "";
        synopsis = "Parser for TOML files";
        description = "TOML is an obvious and minimal format for config files.\n\nThis package provides a TOML parser,\nbuild with the Parsec library. It exposes a JSON\ninterface using the Aeson library.";
        buildType = "Simple";
      };
      components = {
        htoml = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
        exes = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.time
              hsPkgs.htoml
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
            ];
          };
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.time
              hsPkgs.htoml
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.time
              hsPkgs.htoml
              hsPkgs.criterion
            ];
          };
        };
      };
    }