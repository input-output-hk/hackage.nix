{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "haskore";
        version = "0.2.0.6";
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
      "library" = {
        depends  = [
          (hsPkgs.markov-chain)
          (hsPkgs.midi)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src)
          (hsPkgs.parsec)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.process)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.special-functors)
          ]);
      };
      exes = {
        "autotrack" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.haskore)
            (hsPkgs.bytestring)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "test-haskore" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.haskore)
            (hsPkgs.midi)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.transformers)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.base)
          ];
        };
      };
    };
  }