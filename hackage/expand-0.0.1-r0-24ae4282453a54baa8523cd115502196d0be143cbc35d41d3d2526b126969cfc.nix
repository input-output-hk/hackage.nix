{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "expand"; version = "0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jaccokrijnen@gmail.com";
      author = "Jacco Krijnen";
      homepage = "";
      url = "";
      synopsis = "Extensible Pandoc";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
          (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
          (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
          (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
          ];
        buildable = true;
        };
      };
    }