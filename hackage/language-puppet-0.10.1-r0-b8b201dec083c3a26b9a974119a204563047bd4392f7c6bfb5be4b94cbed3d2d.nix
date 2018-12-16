{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { hruby = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "language-puppet";
        version = "0.10.1";
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
          (hsPkgs.strict-base-types)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
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
        ] ++ pkgs.lib.optional (flags.hruby) (hsPkgs.hruby);
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
          ];
        };
      };
      tests = {
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
            (hsPkgs.parsec)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
    };
  }