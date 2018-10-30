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
      specVersion = "1.6";
      identifier = {
        name = "flowsim";
        version = "0.2.8";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/index.php/flowsim/";
      url = "";
      synopsis = "Simulate 454 pyrosequencing";
      description = "Provides clonesim, a clone simulator that simulates shotgun\ngenomic clones, and flowsim, that takes the output from clonesim\n(or any other Fasta-formatted file) and generates simulated\nreads from them mimicing Roche's 454 pyrosequencing technology,\nwriting output in 454's native SFF format.  The flowgram\ngeneration is based on empirical distributions derived from real\ndata (although analytic distributions are available too, if you\nprefer).\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flowsim>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flowsim" = {
          depends  = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
          ];
        };
        "hplc" = {
          depends  = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
        "clonesim" = {
          depends  = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.cmdargs)
            (hsPkgs.bytestring)
            (hsPkgs.MonadRandom)
          ];
        };
      };
    };
  }