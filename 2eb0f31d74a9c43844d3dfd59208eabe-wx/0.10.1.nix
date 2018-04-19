{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wx";
          version = "0.10.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "wxhaskell-users@lists.sourceforge.net";
        author = "Daan Leijen";
        homepage = "";
        url = "";
        synopsis = "wxHaskell";
        description = "wxHaskell is a portable and native GUI library for Haskell.  It is built on top of wxWidgets - a comprehensive C++ library that is portable across all major GUI platforms; including GTK, Windows, X11, and MacOS X.";
        buildType = "Simple";
      };
      components = {
        wx = {
          depends  = [
            hsPkgs.base
            hsPkgs.wxcore
          ];
        };
      };
    }