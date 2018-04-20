{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18.0";
        identifier = {
          name = "vty-examples";
          version = "5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
        author = "AUTHORS";
        homepage = "https://github.com/coreyoconnor/vty";
        url = "";
        synopsis = "Examples programs using the vty library.";
        description = "vty is terminal GUI library in the niche of ncurses.  It is intended to be easy to use, have no\nconfusing corner cases, and good support for common terminal types.\n\nvty-interactive-terminal-test - interactive test. Useful for building a bug report for vtys author.\nvty-event-echo - view a input event log for vty. Example of interacting with user.\nvty-rouge - A bad rouge-like game. Go from the entrance to exit. Example of layers\nvty-benchmark - benchmarks vty. A series of tests that push random pictures to the terminal.\n\n&#169; Corey O'Connor; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        exes = {
          vty-interactive-terminal-test = {
            depends  = [
              hsPkgs.vty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.parallel
              hsPkgs.parsec
              hsPkgs.string-qq
              hsPkgs.terminfo
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.vector
            ];
          };
          vty-event-echo = {
            depends  = [
              hsPkgs.vty
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.parallel
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.vector
            ];
          };
          vty-rouge = {
            depends  = [
              hsPkgs.vty
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.parallel
              hsPkgs.random
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.vector
            ];
          };
          vty-benchmark = {
            depends  = [
              hsPkgs.vty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.parallel
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.string-qq
              hsPkgs.terminfo
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.vector
            ];
          };
        };
      };
    }