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
        name = "tamarin-prover-term";
        version = "0.8.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
      maintainer = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software/tamarin";
      url = "";
      synopsis = "Term manipulation library for the tamarin prover.";
      description = "This is an internal library of the Tamarin prover for\nsecurity protocol verification\n(<hackage.haskell.org/package/tamarin-prover>).\n\nThis library provides term manipulation infrastructure\n(matching, unification, narrowing, finite variants) for\nthe Tamarin prover. It uses maude\n(<http://maude.cs.uiuc.edu/>) as a backend for\nnormalization, equational matching, and unification.";
      buildType = "Simple";
    };
    components = {
      "tamarin-prover-term" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.parsec)
          (hsPkgs.syb)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          (hsPkgs.derive)
          (hsPkgs.HUnit)
          (hsPkgs.tamarin-prover-utils)
        ];
      };
    };
  }