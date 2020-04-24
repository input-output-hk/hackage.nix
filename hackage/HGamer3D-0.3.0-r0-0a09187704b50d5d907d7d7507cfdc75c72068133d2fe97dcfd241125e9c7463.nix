{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "HGamer3D"; version = "0.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "A Game Engine for the Haskell Programmer";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. The game engine uses available libraries for 3D graphics,\nsound, input device handling, gui programming and other areas and make\nthose functions available for the Haskell programmer by providing\na Haskell API on top of that. HGamer3D is available on Windows and Linux.\nThis package is a wrapper for the main modules and does not contain additional\nfunctionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HGamer3D-Data" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Audio" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Audio"))
          (hsPkgs."HGamer3D-Network" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Network"))
          (hsPkgs."HGamer3D-InputSystem" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-InputSystem"))
          (hsPkgs."HGamer3D-Graphics3D" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Graphics3D"))
          (hsPkgs."HGamer3D-WinEvent" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-WinEvent"))
          (hsPkgs."HGamer3D-GUI" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-GUI"))
          ];
        buildable = true;
        };
      };
    }