{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskell-platform-test";
          version = "2010.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, Don Stewart.";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/haskell-platform-test";
        url = "";
        synopsis = "A test system for the Haskell Platform environment";
        description = "A test system for the Haskell Platform environment\n\nRun:\n\n> cabal install haskell-platform-test\n\nAfter installing the Haskell Platform version corresponding to this\nrelease.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskell-platform-test = {
            depends  = [
              hsPkgs.ghc
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.extensible-exceptions
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.haskell98
              hsPkgs.hpc
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.random
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.cgi
              hsPkgs.fgl
              hsPkgs.GLUT
              hsPkgs.haskell-src
              hsPkgs.html
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.OpenGL
              hsPkgs.parallel
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.regex-base
              hsPkgs.regex-compat
              hsPkgs.regex-posix
              hsPkgs.stm
              hsPkgs.xhtml
              hsPkgs.zlib
              hsPkgs.HTTP
              hsPkgs.deepseq
            ];
            build-tools = [
              hsPkgs.buildPackages.alex
              hsPkgs.buildPackages.happy
            ];
          };
        };
      };
    }