{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Win32"; version = "2.5.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003; shelarcy, 2012-2013";
      maintainer = "Haskell Libraries <libraries@haskell.org>";
      author = "Alastair Reid, shelarcy";
      homepage = "https://github.com/haskell/win32";
      url = "";
      synopsis = "A binding to part of the Win32 library";
      description = "A binding to part of the Win32 library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.filepath) ];
        libs = [
          (pkgs."user32")
          (pkgs."gdi32")
          (pkgs."winmm")
          (pkgs."advapi32")
          (pkgs."shell32")
          (pkgs."shfolder")
          (pkgs."shlwapi")
          (pkgs."msimg32")
          (pkgs."imm32")
          ];
        };
      };
    }