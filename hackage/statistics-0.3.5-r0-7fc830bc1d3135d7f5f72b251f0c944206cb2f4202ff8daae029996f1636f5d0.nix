{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "statistics";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://darcs.serpentine.com/statistics";
      url = "";
      synopsis = "A library of statistical types, data, and functions";
      description = "This library provides a number of common functions and types useful\nin statistics.  Our focus is on high performance, numerical\nrobustness, and use of good algorithms.  Where possible, we provide\nreferences to the statistical literature.\n\nThe library's facilities can be divided into three broad categories:\n\nWorking with widely used discrete and continuous probability\ndistributions.  (There are dozens of exotic distributions in use; we\nfocus on the most common.)\n\nComputing with sample data: quantile estimation, kernel density\nestimation, bootstrap methods, and autocorrelation analysis.\n\nRandom variate generation under several different distributions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.erf)
          (hsPkgs.time)
          (hsPkgs.uvector)
          (hsPkgs.uvector-algorithms)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }