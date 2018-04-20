{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HGamer3D-OIS-Binding";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@googlemail.com";
        author = "Dr. Peter Althainz";
        homepage = "http://www.althainz.de/HGamer3D.html";
        url = "";
        synopsis = "Library to enable 3D game development for Haskell - OIS Bindings";
        description = "Library, to enable 3D game development for Haskell,\nbased on bindings to 3D Graphics, pyhsics engine and additional libraries.\nCurrent implementation contains the following features:\nOGRE Binding, OIS Binding (limited functionality)\nPlatform: Windows only\nInstall following packages in sequence: HGamer3D-Data, HGamer3D-Ogre-Binding, HGamer3D-OIS-Binding, HGamer3D-API\nLicense: Apache License, Version 2.0";
        buildType = "Simple";
      };
      components = {
        HGamer3D-OIS-Binding = {
          depends  = [
            hsPkgs.base
            hsPkgs.HGamer3D-Data
            hsPkgs.HGamer3D-Ogre-Binding
            hsPkgs.haskell98
          ];
          libs = [
            pkgs."stdc++.dll"
            pkgs.HGamer3DOIS
          ];
        };
      };
    }