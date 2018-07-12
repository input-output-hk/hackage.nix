{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "super-user-spark";
          version = "0.4.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "";
        url = "";
        synopsis = "Configure your dotfile deployment with a DSL.";
        description = "Configure your dotfile deployment with a DSL.";
        buildType = "Simple";
      };
      components = {
        "super-user-spark" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.validity
            hsPkgs.validity-path
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.iostring
          ];
        };
        exes = {
          "super-user-spark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.super-user-spark
            ];
          };
        };
        tests = {
          "spark-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.super-user-spark
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.genvalidity
              hsPkgs.genvalidity-path
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-hspec-aeson
              hsPkgs.validity
              hsPkgs.validity-path
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.iostring
              hsPkgs.hashable
            ];
          };
        };
      };
    }