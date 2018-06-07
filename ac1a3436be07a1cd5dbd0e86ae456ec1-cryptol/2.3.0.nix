{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      static = false;
      relocatable = true;
      server = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cryptol";
          version = "2.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2016 Galois Inc.";
        maintainer = "cryptol@galois.com";
        author = "Galois, Inc.";
        homepage = "http://www.cryptol.net/";
        url = "";
        synopsis = "Cryptol: The Language of Cryptography";
        description = "Cryptol is a domain-specific language for specifying cryptographic algorithms. A Cryptol implementation of an algorithm resembles its mathematical specification more closely than an implementation in a general purpose language. For more, see <http://www.cryptol.net/>.";
        buildType = "Simple";
      };
      components = {
        cryptol = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.deepseq-generics
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.gitrev
            hsPkgs.generic-trie
            hsPkgs.GraphSCC
            hsPkgs.heredoc
            hsPkgs.monad-control
            hsPkgs.monadLib
            hsPkgs.old-time
            hsPkgs.presburger
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.sbv
            hsPkgs.smtLib
            hsPkgs.simple-smt
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.tf-random
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.utf8-string
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
        exes = {
          cryptol = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.cryptol
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.monadLib
              hsPkgs.monad-control
              hsPkgs.process
              hsPkgs.random
              hsPkgs.sbv
              hsPkgs.tf-random
              hsPkgs.transformers
            ];
          };
          cryptol-server = {
            depends  = pkgs.lib.optionals _flags.server [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptol
              hsPkgs.filepath
              hsPkgs.monad-control
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.zeromq4-haskell
            ];
          };
        };
        benchmarks = {
          cryptol-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.cryptol
              hsPkgs.deepseq
              hsPkgs.text
            ];
          };
        };
      };
    }