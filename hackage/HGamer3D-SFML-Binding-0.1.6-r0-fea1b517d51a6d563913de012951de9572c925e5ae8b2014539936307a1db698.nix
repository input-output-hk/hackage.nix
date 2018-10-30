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
      specVersion = "1.2";
      identifier = {
        name = "HGamer3D-SFML-Binding";
        version = "0.1.6";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@googlemail.com";
      author = "Peter Althainz";
      homepage = "http://www.althainz.de/HGamer3D.html";
      url = "";
      synopsis = "Library to enable 3D game development for Haskell - SFML Bindings";
      description = "Library, to enable 3D game development for Haskell,\nbased on bindings to 3D Graphics, Audio and GUI libraries.\nThis is the SFML Bindings module, which provides Audio and\nInput System (Joystick, Mouse, Keyboard) functionality.\nPlatform: Windows only\nLicense: Apache License, Version 2.0\nInstall: see http://www.althainz.de/HGamer3D/Download-and-Installation.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HGamer3D-Data)
          (hsPkgs.haskell98)
        ];
        libs = [
          (pkgs."HGamer3DSFML016")
        ];
      };
    };
  }