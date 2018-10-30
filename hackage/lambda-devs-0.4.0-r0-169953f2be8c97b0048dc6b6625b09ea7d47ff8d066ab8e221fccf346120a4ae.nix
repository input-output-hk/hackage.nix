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
        name = "lambda-devs";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alios@alios.org";
      author = "Markus Barenhoff";
      homepage = "http://github.com/alios/lambda-devs";
      url = "";
      synopsis = "a Paralell-DEVS implementaion based on distributed-process";
      description = "The Discrete Event System Sepcification (DEVS) formalism\ndefines discrete event simulation models in a hierachical,\nmodular manner.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.distributed-process)
          (hsPkgs.dimensional)
        ];
      };
      exes = {
        "lambda-devs-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.distributed-process)
            (hsPkgs.lambda-devs)
            (hsPkgs.numtype)
            (hsPkgs.dimensional)
          ];
        };
      };
      tests = {
        "lambda-devs-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.distributed-process)
            (hsPkgs.dimensional)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }