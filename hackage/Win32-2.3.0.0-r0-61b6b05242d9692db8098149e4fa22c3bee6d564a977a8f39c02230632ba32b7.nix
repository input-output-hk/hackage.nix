{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Win32";
        version = "2.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Alastair Reid";
      homepage = "https://github.com/haskell/win32";
      url = "";
      synopsis = "A binding to part of the Win32 library";
      description = "A binding to part of the Win32 library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."user32")
          (pkgs."gdi32")
          (pkgs."winmm")
          (pkgs."advapi32")
          (pkgs."shell32")
          (pkgs."shfolder")
        ];
      };
    };
  }