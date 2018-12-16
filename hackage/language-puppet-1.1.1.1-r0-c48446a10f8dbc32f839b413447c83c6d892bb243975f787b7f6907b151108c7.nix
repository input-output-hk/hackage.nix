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
      specVersion = "1.8";
      identifier = {
        name = "language-puppet";
        version = "1.1.1.1";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.attoparsec)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filecache)
          (hsPkgs.hashable)
          (hsPkgs.hruby)
          (hsPkgs.hslogger)
          (hsPkgs.hslua)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.luautils)
          (hsPkgs.mtl)
          (hsPkgs.operational)
          (hsPkgs.parsec)
          (hsPkgs.parsers)
          (hsPkgs.pcre-utils)
          (hsPkgs.process)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.scientific)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.strict-base-types)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "puppetresources" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.hslogger)
            (hsPkgs.Diff)
            (hsPkgs.unordered-containers)
            (hsPkgs.strict-base-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.parallel-io)
            (hsPkgs.containers)
            (hsPkgs.Glob)
            (hsPkgs.hspec)
            (hsPkgs.either)
            (hsPkgs.servant-client)
          ];
        };
        "pdbquery" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.strict-base-types)
            (hsPkgs.lens)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.either)
            (hsPkgs.servant-client)
          ];
        };
      };
      tests = {
        "test-evals" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.parsers)
          ];
        };
        "test-lexer" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.unix)
          ];
        };
        "test-expr" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.parsers)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.strict-base-types)
          ];
        };
        "test-hiera" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.strict-base-types)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
          ];
        };
        "test-puppetdb" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.strict-base-types)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.either)
          ];
        };
        "erbparser" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.strict-base-types)
            (hsPkgs.lens)
            (hsPkgs.text)
          ];
        };
      };
    };
  }