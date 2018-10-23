{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pipes-rt";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Greg Hale";
      maintainer = "Greg Hale <imalsogreg@gmail.com>";
      author = "Greg Hale";
      homepage = "http://github.com/ImAlsoGreg/pipes-rt";
      url = "";
      synopsis = "A few pipes to control the timing of yields";
      description = "Use this library to yield values downstream according to different timing rules.  For example, use the relTimeCat pipe, and your data will be yielded at each datum's specified time since the running of the effect.  Or use poissonCat to yield values with poisson timing.";
      buildType = "Simple";
    };
    components = {
      "pipes-rt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.time)
          (hsPkgs.mwc-random)
        ];
      };
      exes = {
        "PipesRealTimeExample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes)
            (hsPkgs.pipes-rt)
            (hsPkgs.time)
          ];
        };
      };
    };
  }