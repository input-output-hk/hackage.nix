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
        name = "quickcheck-state-machine-distributed";
        version = "0.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2018, HERE Europe B.V.";
      maintainer = "stevan.andjelkovic@here.com";
      author = "Stevan Andjelkovic";
      homepage = "https://github.com/advancedtelematic/quickcheck-state-machine-distributed#readme";
      url = "";
      synopsis = "Test monadic programs using state machine based models";
      description = "Please see the README on Github at <https://github.com/advancedtelematic/quickcheck-state-machine-distributed#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.distributed-process)
          (hsPkgs.mtl)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
          (hsPkgs.random)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "quickcheck-state-machine-distributed-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.distributed-process)
            (hsPkgs.mtl)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.quickcheck-state-machine-distributed)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }