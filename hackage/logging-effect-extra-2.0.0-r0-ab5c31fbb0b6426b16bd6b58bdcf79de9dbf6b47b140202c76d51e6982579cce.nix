{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "logging-effect-extra"; version = "2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "Supplemental packages for `logging-effect`.";
      description = "Supplemental packages for `logging-effect`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
          (hsPkgs."logging-effect-extra-file" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-file"))
          (hsPkgs."logging-effect-extra-handler" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-handler"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          ];
        buildable = true;
        };
      exes = {
        "log-extra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect-extra" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra"))
            ];
          buildable = true;
          };
        };
      };
    }