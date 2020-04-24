{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "termplot"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Ricardo Catalinas Jiménez";
      maintainer = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      author = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      homepage = "https://github.com/jimenezrick/termplot";
      url = "";
      synopsis = "Plot time series in your terminal using commands stdout";
      description = "Use unicode characters to plot fancy time series in real-time in your terminal.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "termplot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time-units" or ((hsPkgs.pkgs-errors).buildDepError "time-units"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }