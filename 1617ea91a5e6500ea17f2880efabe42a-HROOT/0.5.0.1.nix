{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HROOT";
          version = "0.5.0.1";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/HROOT";
        url = "";
        synopsis = "Wrapper for ROOT";
        description = "Haskell FFI binding for ROOT";
        buildType = "Custom";
      };
      components = {
        HROOT = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }