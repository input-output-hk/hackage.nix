{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wxcore";
        version = "0.10.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell.  It is built on top of wxWidgets - a comprehensive C++ library that is portable across all major GUI platforms; including GTK, Windows, X11, and MacOS X.  At present, it works with wxWidgets 2.6 (and sadly, not with with wxWidgets 2.8)";
      buildType = "Make";
    };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.time)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.time)
          ];
      };
    };
  }