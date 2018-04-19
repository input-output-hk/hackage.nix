{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HsHaruPDF";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to libharu (http://libharu.sourceforge.net/)";
        description = "Haskell binding to libharu (http://libharu.sourceforge.net/)";
        buildType = "Custom";
      };
      components = {
        HsHaruPDF = {
          depends  = [ hsPkgs.base ];
        };
      };
    }