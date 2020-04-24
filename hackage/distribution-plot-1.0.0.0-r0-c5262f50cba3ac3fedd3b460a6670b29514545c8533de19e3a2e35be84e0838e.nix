{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "distribution-plot"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "romain.edelmann@gmail.com";
      author = "Romain Edelmann";
      homepage = "https://github.com/redelmann/haskell-distribution-plot";
      url = "";
      synopsis = "Easily plot distributions from the distribution package..";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."distribution" or ((hsPkgs.pkgs-errors).buildDepError "distribution"))
          ];
        buildable = true;
        };
      };
    }