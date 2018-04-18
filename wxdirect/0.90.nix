{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wxdirect";
          version = "0.90";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wxhaskell-devel@lists.sourceforge.net";
        author = "Daan Leijen";
        homepage = "http://haskell.org/haskellwiki/WxHaskell";
        url = "";
        synopsis = "helper tool for building wxHaskell";
        description = "wxHaskell is a portable and native GUI library for Haskell. It is built on\ntop of wxWidgets, a comprehensive C++ library that is portable across all\nmajor GUI platforms, including GTK, Windows, X11, and MacOS X. This version\nworks with wxWidgets 2.9 only.";
        buildType = "Simple";
      };
      components = {
        wxdirect = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          wxdirect = {
            depends  = [
              hsPkgs.directory
              hsPkgs.parsec
              hsPkgs.strict
              hsPkgs.time
            ] ++ [
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
      };
    }