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
        version = "5.23.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty (cygnus@foobox.com)";
      author = "AUTHORS";
      homepage = "https://github.com/jtdaugherty/vty";
      url = "";
      synopsis = "A simple terminal UI library";
      description = "vty is terminal GUI library in the niche of ncurses. It is intended to\nbe easy to use, have no confusing corner cases, and good support for\ncommon terminal types.\n\nSee the @vty-examples@ package as well as the program\n@test/interactive_terminal_test.hs@ included in the @vty@ package for\nexamples on how to use the library.\n\nImport the \"Graphics.Vty\" convenience module to get access to the core\nparts of the library.\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; Corey O'Connor; BSD3 license.\n\n&#169; Jonathan Daugherty; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "vty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
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
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      exes = {
        "vty-mode-demo" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.mtl)
          ];
        };
        "vty-demo" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.base)
            (hsPkgs.containers)
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