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
        name = "fast-arithmetic";
        version = "0.6.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/fast-arithmetic#readme";
      url = "";
      synopsis = "Fast functions on integers.";
      description = "Fast functions for number theory and combinatorics with a high level of safety guaranteed by [ATS](http://www.ats-lang.org/).";
      buildType = "Simple";
    };
    components = {
      "fast-arithmetic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composition-prelude)
          (hsPkgs.gmpint)
        ];
      };
      tests = {
        "fast-arithmetic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-arithmetic)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.arithmoi)
          ] ++ (if compiler.isGhc && compiler.version.ge "8.4"
            then [
              (hsPkgs.combinat-compat)
            ]
            else [ (hsPkgs.combinat) ]);
        };
      };
      benchmarks = {
        "fast-arithmetic-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fast-arithmetic)
            (hsPkgs.criterion)
            (hsPkgs.arithmoi)
          ] ++ (if compiler.isGhc && compiler.version.ge "8.4"
            then [
              (hsPkgs.combinat-compat)
            ]
            else [ (hsPkgs.combinat) ]);
        };
      };
    };
  }