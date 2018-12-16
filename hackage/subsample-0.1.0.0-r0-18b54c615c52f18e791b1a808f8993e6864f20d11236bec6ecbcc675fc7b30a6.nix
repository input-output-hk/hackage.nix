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
      specVersion = "1.10";
      identifier = {
        name = "subsample";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2017 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/subsample#readme";
      url = "";
      synopsis = "Subsample data.";
      description = "Subsample data from a uniform distribution so two different statuses for the same entity have the same number of samples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random-fu)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "subsample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.subsample)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }