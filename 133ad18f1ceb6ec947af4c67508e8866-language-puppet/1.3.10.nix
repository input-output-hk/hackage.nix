{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-puppet";
          version = "1.3.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "http://lpuppet.banquise.net/";
        url = "";
        synopsis = "Tools to parse and evaluate the Puppet DSL.";
        description = "This is a set of tools that is supposed to fill all your Puppet needs : syntax checks, catalog compilation, PuppetDB queries, simulationg of complex interactions between nodes, Puppet master replacement, and more !";
        buildType = "Simple";
      };
      components = {
        "language-puppet" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.ansi-wl-pprint
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filecache
            hsPkgs.formatting
            hsPkgs.hashable
            hsPkgs.http-api-data
            hsPkgs.http-client
            hsPkgs.hruby
            hsPkgs.hslogger
            hsPkgs.hspec
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.megaparsec
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.operational
            hsPkgs.parsec
            hsPkgs.pcre-utils
            hsPkgs.process
            hsPkgs.random
            hsPkgs.regex-pcre-builtin
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.strict-base-types
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
          ];
        };
        exes = {
          "puppetresources" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.hslogger
              hsPkgs.http-client
              hsPkgs.language-puppet
              hsPkgs.lens
              hsPkgs.megaparsec
              hsPkgs.optparse-applicative
              hsPkgs.parallel-io
              hsPkgs.regex-pcre-builtin
              hsPkgs.servant-client
              hsPkgs.strict-base-types
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
          "pdbquery" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.http-client
              hsPkgs.language-puppet
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.servant-client
              hsPkgs.strict-base-types
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          "test-evals" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.text
              hsPkgs.lens
              hsPkgs.megaparsec
              hsPkgs.hspec
            ];
          };
          "test-lexer" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.text
              hsPkgs.megaparsec
              hsPkgs.vector
              hsPkgs.ansi-wl-pprint
              hsPkgs.unix
            ];
          };
          "test-expr" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.text
              hsPkgs.megaparsec
              hsPkgs.vector
              hsPkgs.ansi-wl-pprint
              hsPkgs.strict-base-types
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
            ];
          };
          "test-hiera" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.temporary
              hsPkgs.strict-base-types
              hsPkgs.HUnit
              hsPkgs.lens
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.hslogger
            ];
          };
          "test-puppetdb" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.temporary
              hsPkgs.strict-base-types
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
          "erbparser" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.strict-base-types
              hsPkgs.lens
              hsPkgs.text
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.strict-base-types
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.unordered-containers
              hsPkgs.megaparsec
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.mtl
              hsPkgs.hspec-megaparsec
            ];
          };
        };
      };
    }