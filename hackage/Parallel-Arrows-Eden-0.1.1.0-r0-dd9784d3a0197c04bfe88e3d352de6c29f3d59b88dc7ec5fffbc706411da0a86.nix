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
        name = "Parallel-Arrows-Eden";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Martin Braun";
      author = "";
      homepage = "https://github.com/s4ke/Parrows#readme";
      url = "";
      synopsis = "Eden based backend for @Parallel-Arrows-Definition@.";
      description = "Eden based backend for @Parallel-Arrows-Definition@.\nThis backend works on shared-memory (compile with -parcp) systems or on clusters (only -parmpi was tested).\nFor parallel evaluation on clusters you will have to compile your own Eden GHC (http://www.mathematik.uni-marburg.de/~eden/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.split)
          (hsPkgs.edenmodules)
          (hsPkgs.Parallel-Arrows-Definition)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.parallel)
            (hsPkgs.split)
            (hsPkgs.edenmodules)
            (hsPkgs.Parallel-Arrows-Definition)
            (hsPkgs.Parallel-Arrows-BaseSpec)
            (hsPkgs.Parallel-Arrows-Eden)
          ];
        };
      };
    };
  }