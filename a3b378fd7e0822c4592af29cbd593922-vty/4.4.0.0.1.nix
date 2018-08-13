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
      specVersion = "0";
      identifier = {
        name = "vty";
        version = "4.4.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "Stefan O'Rear, Corey O'Connor";
      homepage = "http://trac.haskell.org/vty/";
      url = "";
      synopsis = "A simple terminal access library";
      description = "vty is terminal GUI library in the niche of ncurses.  It is intended to be easy to use, have no\nconfusing corner cases, and good support for common terminal types.\n\nIncluded in the source distribution is a program test/interactive_terminal_test.hs that\ndemonstrates the various features.\n\nIf your terminal is not behaving as expected the results of the test/interactive_terminal_test.hs\nprogram should be sent to the Vty maintainter to aid in debugging the issue.\n\nNotable infelicities: Sometimes poor efficiency; Assumes UTF-8 character encoding support by the\nterminal;\n\nYou can 'darcs get' it from <http://code.haskell.org/vty/>\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; 2008-2010 Corey O'Connor; BSD3 license.\n\nNOTE: This version is identical to 4.4.0.0 except that the restriction\non vector-space 0.5.* has been lifted; i.e. nothing has changed except\nthe Cabal file.";
      buildType = "Simple";
    };
    components = {
      "vty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.terminfo)
          (hsPkgs.utf8-string)
          (hsPkgs.mtl)
          (hsPkgs.ghc-prim)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.parsec)
          (hsPkgs.vector-space)
        ];
      };
    };
  }