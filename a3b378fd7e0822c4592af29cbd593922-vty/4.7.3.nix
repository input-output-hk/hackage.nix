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
      specVersion = "1.14.0";
      identifier = {
        name = "vty";
        version = "4.7.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "AUTHORS";
      homepage = "https://github.com/coreyoconnor/vty";
      url = "";
      synopsis = "A simple terminal UI library";
      description = "vty is terminal GUI library in the niche of ncurses.  It is intended to be easy to use, have no\nconfusing corner cases, and good support for common terminal types.\n\nIncluded in the source distribution is a program test/interactive_terminal_test.hs that\ndemonstrates the various features.\n\nIf your terminal is not behaving as expected the results of the vty-interactive-terminal-test\nexecutable should be sent to the Vty maintainter to aid in debugging the issue.\n\nNotable infelicities: Sometimes poor efficiency; Assumes UTF-8 character encoding support by the\nterminal;\n\nProject is hosted on github.com: https://github.com/coreyoconnor/vty\n\ngit clone git://github.com/coreyoconnor/vty.git\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; Corey O'Connor; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "vty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.terminfo)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "vty-interactive-terminal-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.string-qq)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "verify-attribute-ops" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-using-mock-terminal" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-display-attributes" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-empty-image-props" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-eval-terminfo-caps" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-image-ops" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-image-trans" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-inline" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-parse-terminfo-caps" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-picture-ops" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-picture-to-span" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-span-ops" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-utf8-width" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }