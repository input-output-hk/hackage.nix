{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "slope-field"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2016 Mahdi Dibaiee";
      maintainer = "mdibaiee@aol.com";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/slope-field";
      url = "";
      synopsis = "Visualize mathematical function's slope fields";
      description = "Visualize mathematical function's slope fields";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mathexpr" or ((hsPkgs.pkgs-errors).buildDepError "mathexpr"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      exes = {
        "slope-field" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."slope-field" or ((hsPkgs.pkgs-errors).buildDepError "slope-field"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            ];
          buildable = true;
          };
        };
      };
    }