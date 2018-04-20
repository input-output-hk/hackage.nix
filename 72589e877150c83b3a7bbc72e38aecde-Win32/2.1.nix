{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Win32";
          version = "2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Alastair Reid, 1999-2003";
        maintainer = "Esa Ilari Vuokko <ei@vuokko.info>";
        author = "Alastair Reid";
        homepage = "";
        url = "";
        synopsis = "A binding to part of the Win32 library";
        description = "";
        buildType = "Custom";
      };
      components = {
        Win32 = {
          depends  = [ hsPkgs.base ];
          libs = [
            pkgs.user32
            pkgs.gdi32
            pkgs.winmm
            pkgs.kernel32
            pkgs.advapi32
          ];
        };
      };
    }