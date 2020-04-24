{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HGamer3D-OIS-Binding"; version = "0.1.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HGamer3D-Data" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Ogre-Binding" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Ogre-Binding"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        libs = [
          (pkgs."stdc++.dll" or ((hsPkgs.pkgs-errors).sysDepError "stdc++.dll"))
          (pkgs."HGamer3DOIS014" or ((hsPkgs.pkgs-errors).sysDepError "HGamer3DOIS014"))
          ];
        buildable = true;
        };
      };
    }