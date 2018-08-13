{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "RANSAC";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Anthony Cowley 2012";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "The RANSAC algorithm for parameter estimation.";
      description = "The RANdom SAmple Consensus (RANSAC) algorithm for\nestimating the parameters of a mathematical model\nfrom a data set. See\n<http://en.wikipedia.org/wiki/RANSAC> for more\ninformation.\n\nSee @tests/LinearFit.hs@ in the package contents for\nan example.";
      buildType = "Simple";
    };
    components = {
      "RANSAC" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.random)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.linear)
            (hsPkgs.vector)
            (hsPkgs.lens)
            (hsPkgs.RANSAC)
          ];
        };
      };
    };
  }