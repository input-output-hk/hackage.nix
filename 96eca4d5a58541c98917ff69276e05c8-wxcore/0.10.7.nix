{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wxcore";
        version = "0.10.7";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "http://haskell.org/haskellwiki/WxHaskell";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell.  It is built on top of wxWidgets - a comprehensive C++ library that is portable across all major GUI platforms; including GTK, Windows, X11, and MacOS X.  This version works with wxWidgets 2.8 only.";
      buildType = "Make";
    };
    components = {
      "wxcore" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.stm)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.stm)
          ];
      };
    };
  }