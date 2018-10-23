{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HGamer3D";
        version = "0.1.7";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@googlemail.com";
      author = "Peter Althainz";
      homepage = "http://www.althainz.de/HGamer3D.html";
      url = "";
      synopsis = "Library to enable 3D game development for Haskell";
      description = "Library, to enable 3D game development for Haskell,\nbased on bindings to 3D Graphics, Audio and GUI libraries.\nThis is the module, which includes all other needed modules and provides\nan higher level API for primary\nuse.\nPlatform: Windows only\nLicense: Apache License, Version 2.0\nInstall: see http://www.althainz.de/HGamer3D/Download-and-Installation.html";
      buildType = "Simple";
    };
    components = {
      "HGamer3D" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.Win32)
          (hsPkgs.mtl)
          (hsPkgs.HGamer3D-Data)
          (hsPkgs.HGamer3D-Ogre-Binding)
          (hsPkgs.HGamer3D-SFML-Binding)
          (hsPkgs.haskell98)
        ];
        libs = [ (pkgs."stdc++.dll") ];
      };
    };
  }