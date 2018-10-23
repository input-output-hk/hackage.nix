{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wxcore";
        version = "0.12.1.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "http://haskell.org/haskellwiki/WxHaskell";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell. It is\nbuilt on top of wxWidgets, a comprehensive C++ library that is\nportable across all major GUI platforms, including GTK, Windows,\nX11, and MacOS X. This version works with wxWidgets 2.8 only.";
      buildType = "Custom";
    };
    components = {
      "wxcore" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.stm)
          (hsPkgs.wxdirect)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.time)
        ];
      };
    };
  }