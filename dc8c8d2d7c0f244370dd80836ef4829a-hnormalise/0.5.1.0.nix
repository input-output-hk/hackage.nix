{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hnormalise";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Ghent University";
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
            hsPkgs.attoparsec-iso8601
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.ip
            hsPkgs.monad-loops
            hsPkgs.permute
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.yaml
            hsPkgs.zeromq4-haskell
            hsPkgs.zeromq4-conduit
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
              hsPkgs.attoparsec-iso8601
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.ip
              hsPkgs.monad-loops
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.stm-conduit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.word8
              hsPkgs.yaml
              hsPkgs.zeromq4-haskell
              hsPkgs.zeromq4-conduit
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.transformers-base
            ];
          };
          hnormalise-0mq = {
            depends  = [
              hsPkgs.base
              hsPkgs.hnormalise
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.attoparsec
              hsPkgs.attoparsec-iso8601
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.ip
              hsPkgs.lifted-base
              hsPkgs.monad-loops
              hsPkgs.monad-par
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.word8
              hsPkgs.yaml
              hsPkgs.zeromq4-haskell
              hsPkgs.zeromq4-conduit
            ];
          };
        };
        tests = {
          hnormalise-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.attoparsec-iso8601
              hsPkgs.conduit-extra
              hsPkgs.hnormalise
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-expectations
              hsPkgs.hspec-attoparsec
              hsPkgs.ip
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
        benchmarks = {
          hnormalise-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
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