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
      specVersion = "1.4";
      identifier = {
        name = "HGamer3D-SDL2-Binding";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "SDL2 Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the SDL2 binding.\nHGamer3D-SDL2-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of SDL2\nfunctionality, but only to support what is needed for the\nHGamer3D-WinEvent package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.HGamer3D-Data)
        ];
        libs = if system.isWindows
          then [ (pkgs."hg3dsdl2030") ]
          else [
            (pkgs."hg3dsdl2030")
            (pkgs.":libSDL2-2.0.so.1")
            (pkgs."X11")
          ];
      };
    };
  }