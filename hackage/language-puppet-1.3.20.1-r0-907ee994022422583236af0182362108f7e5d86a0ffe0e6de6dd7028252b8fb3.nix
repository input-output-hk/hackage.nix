{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "language-puppet";
        version = "1.3.20.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net/";
      url = "";
      synopsis = "Tools to parse and evaluate the Puppet DSL.";
      description = "This is a set of tools that is supposed to fill all your Puppet needs : syntax checks, catalog compilation, PuppetDB queries, simulation of complex interactions between nodes, Puppet master replacement, and more !";
      buildType = "Simple";
    };
    components = {
      "language-puppet" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filecache)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.hruby)
          (hsPkgs.hslogger)
          (hsPkgs.hspec)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.operational)
          (hsPkgs.parsec)
          (hsPkgs.pcre-utils)
          (hsPkgs.process)
          (hsPkgs.protolude)
          (hsPkgs.random)
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.hslogger)
            (hsPkgs.http-client)
            (hsPkgs.language-puppet)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parallel-io)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.strict-base-types)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "yera" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-puppet)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.strict-base-types)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.unordered-containers)
          ];
        };
        "pdbquery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.language-puppet)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.strict-base-types)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.hslogger)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.language-puppet)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.protolude)
            (hsPkgs.strict-base-types)
            (hsPkgs.text)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.pcre-utils)
          ];
        };
      };
    };
  }