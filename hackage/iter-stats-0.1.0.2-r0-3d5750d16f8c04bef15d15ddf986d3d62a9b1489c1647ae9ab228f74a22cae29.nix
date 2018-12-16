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
      specVersion = "1.8";
      identifier = {
        name = "iter-stats";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "John W. Lato, 2012";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "https://github.com/JohnLato/iter-stats";
      url = "";
      synopsis = "iteratees for statistical processing";
      description = "efficient statistical values of data streams";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.heap)
          (hsPkgs.iteratee)
          (hsPkgs.ListLike)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "iter-stats-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.statistics)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.heap)
            (hsPkgs.iteratee)
            (hsPkgs.ListLike)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }