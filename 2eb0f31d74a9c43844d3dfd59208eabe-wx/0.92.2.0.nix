{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      newbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wx";
          version = "0.92.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "wxhaskell-devel@lists.sourceforge.net";
        author = "Daan Leijen";
        homepage = "https://wiki.haskell.org/WxHaskell";
        url = "";
        synopsis = "wxHaskell";
        description = "wxHaskell is a portable and native GUI library for Haskell.\nIt is built on top of wxWidgets - a comprehensive C++\nlibrary that is portable across all major GUI platforms;\nincluding GTK, Windows, X11, and MacOS X.  This version\nworks with wxWidgets 2.9 and 3.0.";
        buildType = "Simple";
      };
      components = {
        wx = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.wxcore
              hsPkgs.stm
              hsPkgs.time
            ] ++ [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.wxcore
              hsPkgs.stm
              hsPkgs.time
            ];
        };
      };
    }