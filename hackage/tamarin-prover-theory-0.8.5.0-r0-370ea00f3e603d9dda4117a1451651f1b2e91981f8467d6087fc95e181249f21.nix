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
      specVersion = "1.8";
      identifier = {
        name = "tamarin-prover-theory";
        version = "0.8.5.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
      maintainer = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software/tamarin";
      url = "";
      synopsis = "Term manipulation library for the tamarin prover.";
      description = "This is an internal library of the Tamarin prover for\nsecurity protocol verification\n(<hackage.haskell.org/package/tamarin-prover>).\n\nThis library provides the types to represent security\nprotocol, and it implements the constraint solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
        ];
      };
    };
  }