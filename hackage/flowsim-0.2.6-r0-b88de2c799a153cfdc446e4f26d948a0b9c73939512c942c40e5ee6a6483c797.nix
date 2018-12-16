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
      specVersion = "0";
      identifier = {
        name = "flowsim";
        version = "0.2.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://bhlog.malde.org/";
      url = "";
      synopsis = "Simulate 454 pyrosequencing";
      description = "pyrosim - a simulator for 454 pyrosequencing data\nSimulate shotgun sequencing with Roche's 454 sequencing technology.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/pyrosim>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flowsim" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
        "hplc" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
        "clonesim" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }