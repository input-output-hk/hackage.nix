{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava-shake"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Gergo Erdi";
      maintainer = "Gergo Erdi <gergo@erdi.hu>";
      author = "Gergo Erdi";
      homepage = "";
      url = "";
      synopsis = "Shake rules for building Kansas Lava projects";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."kansas-lava" or ((hsPkgs.pkgs-errors).buildDepError "kansas-lava"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hastache" or ((hsPkgs.pkgs-errors).buildDepError "hastache"))
          ];
        buildable = true;
        };
      };
    }