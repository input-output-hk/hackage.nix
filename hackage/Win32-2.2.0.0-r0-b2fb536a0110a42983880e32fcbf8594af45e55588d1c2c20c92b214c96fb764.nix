{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Win32"; version = "2.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003";
      maintainer = "Esa Ilari Vuokko <ei@vuokko.info>";
      author = "Alastair Reid";
      homepage = "";
      url = "";
      synopsis = "A binding to part of the Win32 library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        libs = [
          (pkgs."user32")
          (pkgs."gdi32")
          (pkgs."winmm")
          (pkgs."kernel32")
          (pkgs."advapi32")
          ];
        };
      };
    }