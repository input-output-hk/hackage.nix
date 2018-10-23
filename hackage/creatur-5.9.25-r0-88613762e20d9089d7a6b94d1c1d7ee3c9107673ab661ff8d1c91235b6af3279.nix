{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "creatur";
        version = "5.9.25";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/creatur#readme";
      url = "";
      synopsis = "Framework for artificial life experiments.";
      description = "Please see the README on GitHub at <https://github.com/mhwombat/creatur#readme>";
      buildType = "Simple";
    };
    components = {
      "creatur" = {
        depends  = [
          (hsPkgs.MonadRandom)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cond)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.gray-extended)
          (hsPkgs.hdaemonize)
          (hsPkgs.hsyslog)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "creatur-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.creatur)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }