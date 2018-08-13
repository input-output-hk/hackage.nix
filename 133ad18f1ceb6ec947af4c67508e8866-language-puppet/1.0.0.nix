{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "language-puppet";
        version = "1.0.0";
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
          (hsPkgs.base)
          (hsPkgs.hruby)
          (hsPkgs.bytestring)
          (hsPkgs.strict-base-types)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.parsers)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.unix)
          (hsPkgs.aeson)
          (hsPkgs.luautils)
          (hsPkgs.hslua)
          (hsPkgs.transformers)
          (hsPkgs.hslogger)
          (hsPkgs.time)
          (hsPkgs.filecache)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.pcre-utils)
          (hsPkgs.process)
          (hsPkgs.iconv)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.attoparsec)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptohash)
          (hsPkgs.base16-bytestring)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.hspec)
          (hsPkgs.yaml)
          (hsPkgs.stateWriter)
          (hsPkgs.split)
          (hsPkgs.scientific)
          (hsPkgs.directory)
          (hsPkgs.operational)
        ];
      };
      exes = {
        "puppetresources" = {
          depends  = [
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
          ];
        };
        "pdbquery" = {
          depends  = [
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
          ];
        };
      };
      tests = {
        "test-evals" = {
          depends  = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.parsers)
          ];
        };
        "test-lexer" = {
          depends  = [
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
          depends  = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.parsers)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
        "test-hiera" = {
          depends  = [
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
          depends  = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.strict-base-types)
            (hsPkgs.lens)
            (hsPkgs.text)
          ];
        };
        "erbparser" = {
          depends  = [
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