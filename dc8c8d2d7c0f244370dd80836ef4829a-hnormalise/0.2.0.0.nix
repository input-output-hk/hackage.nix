{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hnormalise";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andy Georges";
        maintainer = "itkovian@gmail.com";
        author = "Andy Georges";
        homepage = "https://github.com/itkovian/hnormalise#readme";
        url = "";
        synopsis = "Log message normalisation tool producing structured JSON messages";
        description = "Log message normalisation tool producing structured JSON messages";
        buildType = "Simple";
      };
      components = {
        hnormalise = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.ip
            hsPkgs.permute
            hsPkgs.text
            hsPkgs.yaml
          ];
        };
        exes = {
          hnormalise = {
            depends  = [
              hsPkgs.base
              hsPkgs.hnormalise
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.ip
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.word8
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          hnormalise-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.conduit-extra
              hsPkgs.hnormalise
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-expectations
              hsPkgs.hspec-attoparsec
              hsPkgs.ip
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          hnormalise-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.criterion
              hsPkgs.hnormalise
              hsPkgs.random
              hsPkgs.text
            ];
          };
        };
      };
    }