{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "fast-combinatorics";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com//fast-combinatorics#readme";
      url = "";
      synopsis = "Fast combinatorics.";
      description = "Fast combinatorics code with a high level of safety guaranteed by writing it in ATS.";
      buildType = "Custom";
    };
    components = {
      "fast-combinatorics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composition-prelude)
        ];
      };
      tests = {
        "fast-combinatorics-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-combinatorics)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "fast-combinatorics-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-combinatorics)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }