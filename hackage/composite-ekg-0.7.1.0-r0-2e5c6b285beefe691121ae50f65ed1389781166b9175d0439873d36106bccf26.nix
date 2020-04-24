{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "composite-ekg"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc., 2020 Vital Biosciences";
      maintainer = "oss@vitalbio.com";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferOpenSource/composite#readme";
      url = "";
      synopsis = "EKG Metrics for Vinyl records";
      description = "Integration between EKG and Vinyl records allowing records holding registered metrics to be easily constructed from a type declaration.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."composite-base" or ((hsPkgs.pkgs-errors).buildDepError "composite-base"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }