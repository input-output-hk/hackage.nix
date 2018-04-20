{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wxdirect";
          version = "0.92.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wxhaskell-devel@lists.sourceforge.net";
        author = "Daan Leijen";
        homepage = "https://wiki.haskell.org/WxHaskell";
        url = "";
        synopsis = "helper tool for building wxHaskell";
        description = "wxHaskell is a portable and native GUI library for Haskell. It is built on\ntop of wxWidgets, a comprehensive C++ library that is portable across all\nmajor GUI platforms, including GTK, Windows, X11, and MacOS X. This version\nworks with wxWidgets 2.9 and 3.0.";
        buildType = "Simple";
      };
      components = {
        wxdirect = {};
        exes = {
          wxdirect = {
            depends  = [
              hsPkgs.directory
              hsPkgs.parsec
              hsPkgs.strict
              hsPkgs.time
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.base
            ] ++ [
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
      };
    }