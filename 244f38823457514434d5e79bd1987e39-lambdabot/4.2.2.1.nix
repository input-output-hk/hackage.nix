{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lambdabot";
          version = "4.2.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Cale Gibbard <cgibbard@gmail.com>";
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
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.unix
          ];
        };
        exes = {
          lambdabot = {
            depends  = [
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.array
              hsPkgs.network
              hsPkgs.regex-compat
              hsPkgs.readline
              hsPkgs.binary
              hsPkgs.haskell-src
              hsPkgs.haskell-src-exts
              hsPkgs.oeis
              hsPkgs.lambdabot-utils
              hsPkgs.show
              hsPkgs.utf8-string
              hsPkgs.template-haskell
              hsPkgs.brainfuck
              hsPkgs.unlambda
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }