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
      specVersion = "1.6";
      identifier = {
        name = "timeout-with-results";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2012 Petr Pudlák";
      maintainer = "Petr Pudlák <petr.mvd@gmail.com>";
      author = "Petr Pudlák";
      homepage = "https://github.com/ppetr/timeout-with-results";
      url = "";
      synopsis = "Runs a time-limited computation alowing it to return intermediate results.";
      description = "Evaluates a computation withing a given timeout limit, alowing it to return\nintermediate results. Useful for AI algorithms that should return the best\nresult within a given wallclock time limit.";
      buildType = "Simple";
    };
    components = {
      "timeout-with-results" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.mtl)
        ];
      };
    };
  }