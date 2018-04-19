{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-puppet";
          version = "0.3.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "http://lpuppet.banquise.net";
        url = "";
        synopsis = "Tools to parse and evaluate the Puppet DSL.";
        description = "This is a set of libraries designed to work with the Puppet DSL. It can be used to parse .pp files, compile and interpret them, evaluate the templates. It is still very experimental but is already pretty useful when working with the manifests.";
        buildType = "Simple";
      };
      components = {
        language-puppet = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.MissingH
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.hslogger
            hsPkgs.filepath
            hsPkgs.Glob
            hsPkgs.regexpr
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.base16-bytestring
            hsPkgs.regex-pcre-builtin
            hsPkgs.iconv
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.vector
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.attoparsec
            hsPkgs.failure
            hsPkgs.hslua
            hsPkgs.monad-loops
            hsPkgs.directory
            hsPkgs.luautils
            hsPkgs.transformers
            hsPkgs.time
          ];
        };
        tests = {
          test-lexer = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.mtl
            ];
          };
          test-expr = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.parsec
            ];
          };
          test-interpreter = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
        };
        benchmarks = {
          bench-lexer = {
            depends  = [
              hsPkgs.language-puppet
              hsPkgs.base
            ];
          };
        };
      };
    }