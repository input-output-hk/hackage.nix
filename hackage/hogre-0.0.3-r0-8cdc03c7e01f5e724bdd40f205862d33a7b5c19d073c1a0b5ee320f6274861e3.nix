{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hogre"; version = "0.0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Antti Salonen 2009";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://github.com/anttisalonen/hogre";
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
          (pkgs."OgreMain" or ((hsPkgs.pkgs-errors).sysDepError "OgreMain"))
          ];
        pkgconfig = [
          (pkgconfPkgs."OGRE" or ((hsPkgs.pkgs-errors).pkgConfDepError "OGRE"))
          ];
        buildable = true;
        };
      };
    }