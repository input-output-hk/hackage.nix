{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hinduce-examples"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hackage@roberthensing.nl";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Example data for hInduce";
      description = "Example data for use with hInduce";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."layout" or ((hsPkgs.pkgs-errors).buildDepError "layout"))
          (hsPkgs."hinduce-missingh" or ((hsPkgs.pkgs-errors).buildDepError "hinduce-missingh"))
          (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
          (hsPkgs."hinduce-classifier" or ((hsPkgs.pkgs-errors).buildDepError "hinduce-classifier"))
          (hsPkgs."hinduce-classifier-decisiontree" or ((hsPkgs.pkgs-errors).buildDepError "hinduce-classifier-decisiontree"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          ];
        buildable = true;
        };
      };
    }