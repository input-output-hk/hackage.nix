{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "statistics"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010, 2011 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://bitbucket.org/bos/statistics";
      url = "";
      synopsis = "A library of statistical types, data, and functions";
      description = "This library provides a number of common functions and types useful\nin statistics.  Our focus is on high performance, numerical\nrobustness, and use of good algorithms.  Where possible, we provide\nreferences to the statistical literature.\n\nThe library's facilities can be divided into four broad categories:\n\nWorking with widely used discrete and continuous probability\ndistributions.  (There are dozens of exotic distributions in use; we\nfocus on the most common.)\n\nComputing with sample data: quantile estimation, kernel density\nestimation, bootstrap methods, signigicance testing, and autocorrelation\nanalysis.\n\nRandom variate generation under several different distributions.\n\nCommon statistical tests for significant differences between samples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
          (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
        buildable = true;
        };
      };
    }