{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hscurses";
          version = "1.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "Stefan Wehr 2004, 2005\nDon Stewart 2004\nTuomo Valkonen 2004\nJohn Meacham 2002-2004";
        maintainer = "Stefan Wehr <http://www.informatik.uni-freiburg.de/~wehr/>";
        author = "John Meacham <john at repetae dot net>\nTuomo Valkonen <tuomov at iki.fi>\nDon Stewart <http://www.cse.unsw.edu.au/~dons>\nStefan Wehr <http://www.informatik.uni-freiburg.de/~wehr/>";
        homepage = "http://www.informatik.uni-freiburg.de/~wehr/haskell/";
        url = "";
        synopsis = "NCurses bindings for Haskell";
        description = "Binding to NCurses, a library of functions that manage an\napplication's display on character-cell terminals. Additionally,\nit contains some basic widgets such as a text input widget and\na table widget.";
        buildType = "Simple";
      };
      components = {
        hscurses = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.old-locale
          ];
        };
      };
    }