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
        name = "hpc-threshold";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Ecky Putrady";
      maintainer = "eckyputrady@gmail.com";
      author = "Ecky Putrady";
      homepage = "https://github.com/eckyputrady/hpc-threshold#readme";
      url = "";
      synopsis = "Ensure the code coverage is above configured thresholds";
      description = "Please see the README on Github at <https://github.com/eckyputrady/hpc-threshold#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.interpolate)
          (hsPkgs.pcre-heavy)
        ];
      };
      exes = {
        "hpc-threshold" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hpc-threshold)
          ];
        };
      };
      tests = {
        "hpc-threshold-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hpc-threshold)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }