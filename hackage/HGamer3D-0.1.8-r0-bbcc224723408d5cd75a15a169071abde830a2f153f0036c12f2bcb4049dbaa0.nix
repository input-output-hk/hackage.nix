{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HGamer3D"; version = "0.1.8"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HGamer3D-Data" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Ogre-Binding" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Ogre-Binding"))
          (hsPkgs."HGamer3D-SFML-Binding" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-SFML-Binding"))
          ];
        libs = [
          (pkgs."stdc++.dll" or ((hsPkgs.pkgs-errors).sysDepError "stdc++.dll"))
          ];
        buildable = true;
        };
      };
    }