{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskore";
          version = "0.0.7";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskore@henning-thielemann.de>";
        author = "Paul Hudak <paul.hudak@yale.edu>, Henning Thielemann";
        homepage = "http://www.haskell.org/haskellwiki/Haskore";
        url = "";
        synopsis = "The Haskore Computer Music System";
        description = "Compose music using programming features.\nOutput in MIDI, CSound, SuperCollider or as an audio signal.";
        buildType = "Simple";
      };
      components = {
        haskore = {
          depends  = [
            hsPkgs.event-list
            hsPkgs.midi
            hsPkgs.markov-chain
            hsPkgs.non-negative
            hsPkgs.data-accessor
            hsPkgs.transformers
            hsPkgs.haskell-src
            hsPkgs.parsec
            hsPkgs.QuickCheck
            hsPkgs.HUnit
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.random
              hsPkgs.process
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = {
          test = {};
          autotrack = {};
        };
      };
    }