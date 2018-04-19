{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "myTestlll";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008-2014";
        maintainer = "Mark Santolucito <mark.santolucito@yale.edu>,";
        author = "Mark Santolucito <mark.santolucito@yale.edu>,";
        homepage = "http://haskell.cs.yale.edu/";
        url = "";
        synopsis = "None";
        description = "Can you really not delete a library?";
        buildType = "Custom";
      };
      components = {
        myTestlll = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.markov-chain
            hsPkgs.CCA
            hsPkgs.UISF
            hsPkgs.PortMidi
            hsPkgs.HCodecs
            hsPkgs.heap
            hsPkgs.template-haskell
            hsPkgs.monadIO
            hsPkgs.deepseq
            hsPkgs.pure-fft
            hsPkgs.stm
            hsPkgs.arrows
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test-euterpea = {
            depends  = [
              hsPkgs.base
              hsPkgs.Euterpea
              hsPkgs.QuickCheck
              hsPkgs.Cabal
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }