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
        name = "cmaes";
        version = "0.1.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "CMA-ES wrapper in Haskell";
      description = "@cmaes@ is a wrapper for Covariance Matrix Adaptation Evolution\nStrategy(CMA-ES), an evolutionary algorithm for difficult non-linear\nnon-convex optimization problems in continuous domain. To use this\npackage you need python2 with numpy available on your system. The\npackage includes @cma.py@ , Nikolaus Hansen's production-level CMA\nlibrary: <http://www.lri.fr/~hansen/cmaes_inmatlab.html#python>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.syb)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmaes)
            (hsPkgs.doctest)
            (hsPkgs.doctest-prop)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }