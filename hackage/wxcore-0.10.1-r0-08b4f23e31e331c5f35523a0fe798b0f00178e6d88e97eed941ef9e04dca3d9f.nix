{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wxcore";
        version = "0.10.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "wxhaskell-users@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell.  It is built on top of wxWidgets – a comprehensive C++ library that is portable across all major GUI platforms; including GTK, Windows, X11, and MacOS X.";
      buildType = "Make";
    };
    components = {
      "wxcore" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.old-time)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.parsec)
          ];
      };
    };
  }