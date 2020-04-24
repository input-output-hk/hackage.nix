{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "time-series"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (C) 2013-2013 Parallel Scientific Labs, LLC.";
      maintainer = "atsuro.hoshino@parsci.com";
      author = "Atsuro Hoshino";
      homepage = "";
      url = "";
      synopsis = "Time series analysis.";
      description = "A package containing time series analysis prototyping.\n\nThe analysis is for finding time-shifted correlations from multiple\ntime series input data. In later phase, we might extend to do\nanalysis of burst detection, but other analysis than for finding\ncorrelations are not considered yet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "time-series" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time-series" or ((hsPkgs.pkgs-errors).buildDepError "time-series"))
            ];
          buildable = true;
          };
        };
      };
    }