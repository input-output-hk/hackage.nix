{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "creatur"; version = "5.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de Buitl&#233;ir 2010-2014";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitl&#233;ir";
      homepage = "https://github.com/mhwombat/creatur";
      url = "";
      synopsis = "Framework for artificial life experiments.";
      description = "A software framework for automating experiments\nwith artificial life. It provides a daemon which\nmaintains its own \"clock\", schedules events,\nprovides logging, and ensures that each agent gets\nits turn to use the CPU. You can use other\napplications on the computer at the same time\nwithout fear of interfering with experiments; they\nwill run normally, just more slowly. See the\ntutorial at\n<https://github.com/mhwombat/creatur-examples/raw/master/Tutorial.pdf>\nfor examples on how to use the\nCr&#233;at&#250;r framework.\n\nAbout the name: \\\"Cr&#233;at&#250;r\\\" (pronounced kray-toor)\nis an irish word meaning animal, creature, or an\nunfortunate person.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cond)
          (hsPkgs.cereal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gray-extended)
          (hsPkgs.hdaemonize)
          (hsPkgs.hmatrix)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.zlib)
          ];
        };
      tests = {
        "creatur-tests" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.creatur)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hmatrix)
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }