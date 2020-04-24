{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "chart-histogram"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Ben Gamari 2013";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "";
      url = "";
      synopsis = "Easily render histograms with Chart";
      description = "A library for rendering histograms with the Chart library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          ];
        buildable = true;
        };
      };
    }