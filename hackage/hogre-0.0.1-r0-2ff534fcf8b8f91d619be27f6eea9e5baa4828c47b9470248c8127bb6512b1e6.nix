{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hogre"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Antti Salonen 2009";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to a subset of OGRE";
      description = "This package contains bindings to a subset of OGRE\n(Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        libs = [
          (pkgs."CEGUIOgreRenderer" or ((hsPkgs.pkgs-errors).sysDepError "CEGUIOgreRenderer"))
          (pkgs."OgreMain" or ((hsPkgs.pkgs-errors).sysDepError "OgreMain"))
          (pkgs."CEGUIBase" or ((hsPkgs.pkgs-errors).sysDepError "CEGUIBase"))
          ];
        pkgconfig = [
          (pkgconfPkgs."OGRE" or ((hsPkgs.pkgs-errors).pkgConfDepError "OGRE"))
          (pkgconfPkgs."CEGUI" or ((hsPkgs.pkgs-errors).pkgConfDepError "CEGUI"))
          (pkgconfPkgs."CEGUI-OGRE" or ((hsPkgs.pkgs-errors).pkgConfDepError "CEGUI-OGRE"))
          ];
        buildable = true;
        };
      };
    }