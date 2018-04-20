{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "htoml";
          version = "0.2.0.0";
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
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.Cabal
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.htoml
            ];
          };
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.time
              hsPkgs.Cabal
              hsPkgs.htoml
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.aeson
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
              hsPkgs.Cabal
              hsPkgs.htoml
              hsPkgs.criterion
            ];
          };
        };
      };
    }