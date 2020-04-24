{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "peakachu"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "";
      url = "";
      synopsis = "Experiemental library for composable interactive programs";
      description = "Experiemental library for composable interactive programs.\nGLUT backend included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."List" or ((hsPkgs.pkgs-errors).buildDepError "List"))
          (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
          (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }