{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vty";
          version = "3.1.8.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
        author = "Stefan O'Rear";
        homepage = "http://trac.haskell.org/vty/";
        url = "";
        synopsis = "A simple terminal access library";
        description = "vty is a *very* simplistic library in the niche of ncurses.  It is intended\nto be easy to use, have no confusing corner cases, and good support for common\nterminal types.\n\nIf you want to use it, currently the best reference is the test module (Test.hs).\n\nNotable infelicities: requires an ANSI-type terminal, poor efficiency,\nrequires Linux\\/xterm style UTF8 support.\n\nThe latest code is in a darcs repo at <http://code.haskell.org/vty/>. This is only\ncompatible with GHC 6.10+.\n\nThe 3.1.8.* line of vty which is compatable with GHC 6.8 and GHC 6.10 is currently\nin the darcs repo at <http://www.tothepowerofdisco.com/repo/vty-compat>.\n'\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        vty = {
          depends  = [
            hsPkgs.extensible-exceptions
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.unix
            hsPkgs.terminfo
            hsPkgs.utf8-string
          ] ++ [ hsPkgs.base ];
        };
      };
    }