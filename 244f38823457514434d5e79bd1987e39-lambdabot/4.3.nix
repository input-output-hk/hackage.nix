{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambdabot";
          version = "4.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "Don Stewart";
        homepage = "http://haskell.org/haskellwiki/Lambdabot";
        url = "";
        synopsis = "Lambdabot is a development tool and advanced IRC bot";
        description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
        buildType = "Simple";
      };
      components = {
        lambdabot = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dependent-map
            hsPkgs.dependent-sum
            hsPkgs.dependent-sum-template
            hsPkgs.dice
            hsPkgs.directory
            hsPkgs.edit-distance
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.haskell-src-exts
            hsPkgs.hstatsd
            hsPkgs.hslogger
            hsPkgs.HTTP
            hsPkgs.lifted-base
            hsPkgs.misfortune
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.oeis
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.random-fu
            hsPkgs.random-source
            hsPkgs.regex-tdfa
            hsPkgs.SafeSemaphore
            hsPkgs.show
            hsPkgs.split
            hsPkgs.syb
            hsPkgs.tagsoup
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.utf8-string
            hsPkgs.zlib
            hsPkgs.arrows
            hsPkgs.brainfuck
            hsPkgs.data-memocombinators
            hsPkgs.hoogle
            hsPkgs.IOSpec
            hsPkgs.logict
            hsPkgs.MonadRandom
            hsPkgs.mueval
            hsPkgs.numbers
            hsPkgs.unlambda
            hsPkgs.vector-space
          ];
        };
        exes = {
          lambdabot = {
            depends  = [
              hsPkgs.base
              hsPkgs.lambdabot
            ];
          };
        };
      };
    }