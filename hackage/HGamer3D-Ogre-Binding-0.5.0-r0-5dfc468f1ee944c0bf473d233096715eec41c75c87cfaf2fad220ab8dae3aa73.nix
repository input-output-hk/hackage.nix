{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "HGamer3D-Ogre-Binding"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Ogre Binding for HGamer3D";
      description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. This package provides the Ogre binding.\nHGamer3D-Ogre-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of Ogre\nfunctionality, but only to support what is needed for the\nHGamer3D-Graphics3D package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HGamer3D-Data" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Data"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."hg3dogre050" or ((hsPkgs.pkgs-errors).sysDepError "hg3dogre050"))
            ]
          else [
            (pkgs."hg3dogre050" or ((hsPkgs.pkgs-errors).sysDepError "hg3dogre050"))
            (pkgs."OgreMain" or ((hsPkgs.pkgs-errors).sysDepError "OgreMain"))
            (pkgs."OgrePaging" or ((hsPkgs.pkgs-errors).sysDepError "OgrePaging"))
            (pkgs."OgreProperty" or ((hsPkgs.pkgs-errors).sysDepError "OgreProperty"))
            (pkgs."OgreRTShaderSystem" or ((hsPkgs.pkgs-errors).sysDepError "OgreRTShaderSystem"))
            (pkgs."OgreTerrain" or ((hsPkgs.pkgs-errors).sysDepError "OgreTerrain"))
            ];
        buildable = true;
        };
      };
    }