{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      static = false;
      relocatable = true;
      self-contained = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "cryptol";
          version = "2.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2015 Galois Inc.";
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
            hsPkgs.array
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.gitrev
            hsPkgs.GraphSCC
            hsPkgs.monadLib
            hsPkgs.old-time
            hsPkgs.presburger
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.sbv
            hsPkgs.smtLib
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.tf-random
            hsPkgs.transformers
            hsPkgs.utf8-string
          ] ++ pkgs.lib.optional _flags.self-contained hsPkgs.heredoc;
        };
        exes = {
          cryptol = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.cryptol
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.monadLib
              hsPkgs.process
              hsPkgs.random
              hsPkgs.sbv
              hsPkgs.tf-random
              hsPkgs.transformers
            ];
          };
        };
      };
    }