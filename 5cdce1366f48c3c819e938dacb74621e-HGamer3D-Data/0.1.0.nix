{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HGamer3D-Data";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@googlemail.com";
        author = "Dr. Peter Althainz";
        homepage = "http://www.althainz.de/HGamer3D.html";
        url = "";
        synopsis = "Library to enable 3D game development for Haskell - API";
        description = "Library, to enable 3D game development for Haskell,\nbased on bindings to 3D Graphics, pyhsics engine and additional libraries.\nCurrent implementation contains the following features:\nOGRE Binding, OIS Binding (limited functionality)\nPlatform: Windows only\nInstall following packages in sequence: HGamer3D-Data, HGamer3D-Ogre-Binding, HGamer3D-OIS-Binding, HGamer3D-API\nLicense: Apache License, Version 2.0\nThis part contains different Data types of the HGamer3D API";
        buildType = "Simple";
      };
      components = {
        HGamer3D-Data = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
          libs = [ pkgs."stdc++.dll" ];
        };
      };
    }