{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
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
        version = "0.1.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software#TAMARIN";
      url = "";
      synopsis = "The tamarin prover for security protocol analysis.";
      description = "The @tamarin@ prover is a tool for the analysis of security protocols. It\nimplements a constraint solving algorithm that supports both falsification\nand verification of security protocols with respect to an unbounded number\nof sessions. The underlying security protocol model uses multiset\nrewriting to specify protocols and adversary capabilities, a guarded\nfragment of first-order logic to specify security properties, and\nequational theories to model the algebraic properties of cryptographic\noperators.\n\nThe paper describing the theory underlying the @tamarin@ prover is\ncurrently under submission to CSF 2012. Drop us (simon.meier\\@inf.ethz.ch\nor benedikt.schmidt\\@inf.ethz.ch) a mail, if you would like to obtain a\ncopy of the paper.\n\nThe @tamarin@ prover supports both a batch analysis mode and the\ninteractive construction of security proofs using a GUI. Example protocols\nand the user guide are installed together with the prover. Just call the\n@tamarin-prover@ executable without any arguments to get more information.\n\nThe @tamarin@ prover uses maude (<http://maude.cs.uiuc.edu/>) as a\nunification backend and GraphViz (<http://www.graphviz.org/>) to visualize\nconstraint systems. Detailed instructions for installing the `tamarin`\nprover are given here:\n<http://www.infsec.ethz.ch/research/software#TAMARIN>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tamarin-prover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.bytestring)
            (hsPkgs.safe)
            (hsPkgs.transformers)
            (hsPkgs.fclabels)
            (hsPkgs.uniplate)
            (hsPkgs.syb)
            (hsPkgs.binary)
            (hsPkgs.derive)
            (hsPkgs.time)
            (hsPkgs.threads)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-json)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-form)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.hamlet)
            (hsPkgs.warp)
            (hsPkgs.aeson)
            (hsPkgs.old-locale)
            (hsPkgs.monad-control)
            (hsPkgs.parallel)
            (hsPkgs.tamarin-prover-utils)
            (hsPkgs.tamarin-prover-term)
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.le "7.2") [
            (hsPkgs.template-haskell)
            (hsPkgs.data-default)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }