{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "DysFRP-Cairo"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marek Materzok";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/DysFRP";
      url = "";
      synopsis = "dysFunctional Reactive Programming on Cairo";
      description = "Simple Cairo bindings for DysFRP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."DysFRP" or ((hsPkgs.pkgs-errors).buildDepError "DysFRP"))
          ];
        buildable = true;
        };
      };
    }