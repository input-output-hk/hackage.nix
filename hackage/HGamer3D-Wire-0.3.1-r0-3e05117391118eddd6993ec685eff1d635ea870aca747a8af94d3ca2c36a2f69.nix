{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "HGamer3D-Wire"; version = "0.3.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Wire Functionality for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides wiring functionality,\nbased on the packages HGamer3D and netwire. HGamer3D-Wire\nis available on Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HGamer3D-Data" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D"))
          (hsPkgs."HGamer3D-GUI" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-GUI"))
          (hsPkgs."HGamer3D-InputSystem" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-InputSystem"))
          (hsPkgs."HGamer3D-Audio" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-Audio"))
          (hsPkgs."HGamer3D-WinEvent" or ((hsPkgs.pkgs-errors).buildDepError "HGamer3D-WinEvent"))
          ];
        buildable = true;
        };
      };
    }