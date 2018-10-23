{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "vty";
        version = "5.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "AUTHORS";
      homepage = "https://github.com/coreyoconnor/vty";
      url = "";
      synopsis = "A simple terminal UI library";
      description = "vty is terminal GUI library in the niche of ncurses. It is intended to\nbe easy to use, have no confusing corner cases, and good support for\ncommon terminal types.\n\nIncluded in the source distribution is a program\ntest/interactive_terminal_test.hs that demonstrates the various\nfeatures.\n\nDevelopers: See the \"Graphics.Vty\" module.\n\nUsers: See the \"Graphics.Vty.Config\" module.\n\nIf your terminal is not behaving as expected the results of the\nvty-interactive-terminal-test executable should be sent to the Vty\nmaintainter to aid in debugging the issue.\n\nNotable infelicities: Assumes UTF-8 character encoding support by the\nterminal; Poor signal handling; Requires terminfo.\n\nThis project is hosted on github.com: <https://github.com/coreyoconnor/vty>\n\n> git clone git://github.com/coreyoconnor/vty.git\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; Corey O'Connor; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "vty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.stm)
          (hsPkgs.terminfo)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "vty-demo" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "verify-attribute-ops" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-using-mock-terminal" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.terminfo)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-terminal" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-display-attributes" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-empty-image-props" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-eval-terminfo-caps" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-image-ops" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-image-trans" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-inline" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-parse-terminfo-caps" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-simple-span-generation" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-crop-span-generation" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-layers-span-generation" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-utf8-width" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-using-mock-input" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.data-default)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-smallcheck)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
        "verify-config" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.Cabal)
            (hsPkgs.data-default)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-smallcheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.mtl)
            (hsPkgs.string-qq)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }