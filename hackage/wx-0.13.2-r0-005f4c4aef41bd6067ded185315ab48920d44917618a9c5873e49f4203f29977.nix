{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      newbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wx";
        version = "0.13.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "http://haskell.org/haskellwiki/WxHaskell";
      url = "";
      synopsis = "wxHaskell";
      description = "wxHaskell is a portable and native GUI library for Haskell.\nIt is built on top of wxWidgets - a comprehensive C++\nlibrary that is portable across all major GUI platforms;\nincluding GTK, Windows, X11, and MacOS X.  This version\nworks with wxWidgets 2.8 and 2.9.";
      buildType = "Simple";
    };
    components = {
      "wx" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.wxcore)
            (hsPkgs.stm)
          ] ++ [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.wxcore)
            (hsPkgs.stm)
          ];
      };
    };
  }