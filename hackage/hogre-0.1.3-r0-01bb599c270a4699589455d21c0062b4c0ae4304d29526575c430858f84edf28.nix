{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hogre"; version = "0.1.3"; };
      license = "MIT";
      copyright = "(c) 2010, 2011 Antti Salonen";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://anttisalonen.github.com/hogre";
      url = "";
      synopsis = "Haskell binding to a subset of OGRE";
      description = "This package contains Haskell bindings to a subset of\nOGRE (Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."cgen" or ((hsPkgs.pkgs-errors).buildDepError "cgen"))
          ];
        libs = [
          (pkgs."OgreMain" or ((hsPkgs.pkgs-errors).sysDepError "OgreMain"))
          ];
        pkgconfig = (pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."OGRE" or ((hsPkgs.pkgs-errors).pkgConfDepError "OGRE"));
        build-tools = [
          (hsPkgs.buildPackages.cgen or (pkgs.buildPackages.cgen or ((hsPkgs.pkgs-errors).buildToolDepError "cgen")))
          (hsPkgs.buildPackages.grgen or (pkgs.buildPackages.grgen or ((hsPkgs.pkgs-errors).buildToolDepError "grgen")))
          (hsPkgs.buildPackages.cgen-hs or (pkgs.buildPackages.cgen-hs or ((hsPkgs.pkgs-errors).buildToolDepError "cgen-hs")))
          ];
        buildable = true;
        };
      };
    }