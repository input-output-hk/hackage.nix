{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tamarin-prover-utils";
          version = "0.1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
        maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
        author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
        homepage = "http://www.infsec.ethz.ch/research/software#TAMARIN";
        url = "";
        synopsis = "Utility library for the tamarin prover.";
        description = "This is an internal library of the @tamarin@ prover for\nsecurity protocol verification\n(<hackage.haskell.org/package/tamarin-prover>).";
        buildType = "Simple";
      };
      components = {
        tamarin-prover-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.fclabels
            hsPkgs.blaze-builder
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.SHA
            hsPkgs.parsec
            hsPkgs.deepseq
            hsPkgs.syb
            hsPkgs.pretty
            hsPkgs.time
            hsPkgs.binary
          ];
        };
      };
    }