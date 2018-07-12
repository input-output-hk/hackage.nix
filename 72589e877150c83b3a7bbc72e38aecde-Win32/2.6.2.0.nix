{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Win32";
          version = "2.6.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Alastair Reid, 1999-2003; shelarcy, 2012-2013; Tamar Christina, 2016-2018";
        maintainer = "Haskell Libraries <libraries@haskell.org>";
        author = "Alastair Reid, shelarcy, Tamar Christina";
        homepage = "https://github.com/haskell/win32";
        url = "";
        synopsis = "A binding to Windows Win32 API.";
        description = "This library contains direct bindings to the Windows Win32 APIs for Haskell.";
        buildType = "Simple";
      };
      components = {
        "Win32" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unbuildable;
          libs = [
            pkgs.user32
            pkgs.gdi32
            pkgs.winmm
            pkgs.advapi32
            pkgs.shell32
            pkgs.shfolder
            pkgs.shlwapi
            pkgs.msimg32
            pkgs.imm32
          ];
        };
      };
    }