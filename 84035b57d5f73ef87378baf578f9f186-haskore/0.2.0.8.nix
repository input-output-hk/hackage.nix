{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "haskore";
          version = "0.2.0.8";
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
        "haskore" = {
          depends  = [
            hsPkgs.markov-chain
            hsPkgs.midi
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.data-accessor
            hsPkgs.utility-ht
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.haskell-src
            hsPkgs.parsec
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.process
            ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = {
          "flipsong" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.haskore
              hsPkgs.midi
              hsPkgs.bytestring
              hsPkgs.base
            ];
          };
          "autotrack" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.haskore
              hsPkgs.bytestring
              hsPkgs.base
            ];
          };
        };
        tests = {
          "test-haskore" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.haskore
              hsPkgs.midi
              hsPkgs.event-list
              hsPkgs.non-negative
              hsPkgs.transformers
              hsPkgs.data-accessor
              hsPkgs.utility-ht
              hsPkgs.process
              hsPkgs.random
              hsPkgs.bytestring
              hsPkgs.base
            ];
          };
        };
      };
    }