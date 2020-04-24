{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskell-plot"; version = "0.1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Kai Zhang <kai@kzhang.org>";
      author = "Kai Zhang <kai@kzhang.org>";
      homepage = "https://github.com/kaizhang/haskell-plot";
      url = "";
      synopsis = "A library for generating 2D plots painlessly.";
      description = "Greatly simplify the API of Chart (<http://hackage.haskell.org/package/Chart>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
          (hsPkgs."Chart-gtk" or ((hsPkgs.pkgs-errors).buildDepError "Chart-gtk"))
          ];
        buildable = true;
        };
      };
    }