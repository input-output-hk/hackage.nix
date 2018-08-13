{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      no-gui = false;
      threaded = true;
      test-coverage = true;
      build-tests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "tamarin-prover";
        version = "0.8.2.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software/tamarin";
      url = "";
      synopsis = "The Tamarin prover for security protocol analysis.";
      description = "The Tamarin prover is a tool for the analysis of security protocols. It\nimplements a constraint solving algorithm that supports both falsification\nand verification of security protocols with respect to an unbounded number\nof sessions. The underlying security protocol model uses multiset\nrewriting to specify protocols and adversary capabilities, a guarded\nfragment of first-order logic to specify security properties, and\nequational theories to model the algebraic properties of cryptographic\noperators.\n\nThe paper describing the theory underlying the Tamarin prover was\naccepted at CSF 2012. Its extended version is available from\n<http://www.infsec.ethz.ch/research/software/tamarin>.\n\nThe Tamarin prover supports both a batch analysis mode and the\ninteractive construction of security proofs using a GUI. Example protocols\nand the user guide are installed together with the prover. Just call the\n@tamarin-prover@ executable without any arguments to get more information.\n\nThe Tamarin prover uses maude (<http://maude.cs.uiuc.edu/>) as a\nunification backend and GraphViz (<http://www.graphviz.org/>) to visualize\nconstraint systems. Detailed instructions for installing the Tamarin\nprover are given at <http://www.infsec.ethz.ch/research/software/tamarin>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tamarin-prover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.dlist)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.safe)
            (hsPkgs.transformers)
            (hsPkgs.fclabels)
            (hsPkgs.uniplate)
            (hsPkgs.syb)
            (hsPkgs.binary)
            (hsPkgs.derive)
            (hsPkgs.time)
            (hsPkgs.parallel)
            (hsPkgs.HUnit)
            (hsPkgs.tamarin-prover-utils)
            (hsPkgs.tamarin-prover-term)
            (hsPkgs.tamarin-prover-theory)
          ] ++ pkgs.lib.optionals (!_flags.no-gui) [
            (hsPkgs.bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-json)
            (hsPkgs.yesod-static)
            (hsPkgs.conduit)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.hamlet)
            (hsPkgs.warp)
            (hsPkgs.aeson)
            (hsPkgs.old-locale)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-base)
            (hsPkgs.threads)
          ];
        };
      };
    };
  }