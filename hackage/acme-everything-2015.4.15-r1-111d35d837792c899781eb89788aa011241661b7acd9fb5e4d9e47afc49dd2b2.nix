{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-everything"; version = "2015.4.15"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      author = "David Luposchainsky";
      homepage = "";
      url = "";
      synopsis = "Everything.";
      description = "Install some packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."3d-graphics-examples" or ((hsPkgs.pkgs-errors).buildDepError "3d-graphics-examples"))
          (hsPkgs."3dmodels" or ((hsPkgs.pkgs-errors).buildDepError "3dmodels"))
          (hsPkgs."4Blocks" or ((hsPkgs.pkgs-errors).buildDepError "4Blocks"))
          (hsPkgs."ABList" or ((hsPkgs.pkgs-errors).buildDepError "ABList"))
          (hsPkgs."AC-Angle" or ((hsPkgs.pkgs-errors).buildDepError "AC-Angle"))
          (hsPkgs."AC-Boolean" or ((hsPkgs.pkgs-errors).buildDepError "AC-Boolean"))
          (hsPkgs."AC-BuildPlatform" or ((hsPkgs.pkgs-errors).buildDepError "AC-BuildPlatform"))
          (hsPkgs."AC-Colour" or ((hsPkgs.pkgs-errors).buildDepError "AC-Colour"))
          (hsPkgs."AC-EasyRaster-GTK" or ((hsPkgs.pkgs-errors).buildDepError "AC-EasyRaster-GTK"))
          (hsPkgs."AC-HalfInteger" or ((hsPkgs.pkgs-errors).buildDepError "AC-HalfInteger"))
          ];
        buildable = true;
        };
      };
    }