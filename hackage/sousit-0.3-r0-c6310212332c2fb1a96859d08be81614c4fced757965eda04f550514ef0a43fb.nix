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
        name = "sousit";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mario Siegenthaler";
      maintainer = "msiegenthaler@inventsoft.ch";
      author = "Mario Siegenthaler";
      homepage = "https://github.com/msiegenthaler/SouSiT";
      url = "";
      synopsis = "Source/Sink/Transform: An alternative to lazy IO and iteratees.";
      description = "Haskell library for Sources, Sinks and Transformers.\nThe data is pushed from the source through the transfomers into the sink. The sink or a transfomer can decide at any time to end the transfer (see Iteratees).\nThe transformers are very reusable since they can not depend on side effects, so they can be used with files as well as with simple lists.\n\nAllows you to build pipelines such as:\n\n>>> listSource [1..10] \$\$ T.map(+1) =\$= T.buffer 3 0 (+) =\$ listSink\n[9,18,27,11]\n\nits possible to mix various type of sources and sinks, such as in:\n\n>>> fileSourceLine \\\"myfile.txt\\\" \$\$ T.drop 1 =\$= T.map (++ \"!\") =\$ listSink\n[\\\"Hello Mario!\\\", \\\"How're you doing?!\\\"]\n\nFor more documentation see <https://github.com/msiegenthaler/SouSiT>.";
      buildType = "Simple";
    };
    components = {
      "sousit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.cereal)
        ];
      };
      tests = {
        "sousit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.sousit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }