{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "flowsim";
          version = "0.3.5";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "http://biohaskell.org/Applications/FlowSim";
        url = "";
        synopsis = "Simulate 454 pyrosequencing";
        description = "Provides clonesim, a clone simulator that simulates shotgun\ngenomic clones, and flowsim, that takes the output from clonesim\n(or any other Fasta-formatted file) and generates simulated\nreads from them mimicing Roche's 454 pyrosequencing technology,\nwriting output in 454's native SFF format.  The flowgram\ngeneration is based on empirical distributions derived from real\ndata (although analytic distributions are available too, if you\nprefer).\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flowsim>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          flowsim = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.biofasta
              hsPkgs.biocore
              hsPkgs.biosff
            ];
          };
          hplc = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
            ];
          };
          clonesim = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.cmdargs
              hsPkgs.bytestring
              hsPkgs.MonadRandom
            ];
          };
          kitsim = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
            ];
          };
          mutator = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
            ];
          };
          duplicator = {
            depends  = [ hsPkgs.base ];
          };
          gelfilter = {
            depends  = [ hsPkgs.base ];
          };
          filtersff = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }