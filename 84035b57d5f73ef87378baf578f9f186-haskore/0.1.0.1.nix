{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
        version = "0.1.0.1";
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
          (hsPkgs.midi)
          (hsPkgs.event-list)
          (hsPkgs.markov-chain)
          (hsPkgs.non-negative)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src)
          (hsPkgs.parsec)
        ] ++ (if _flags.splitbase
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
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
        "autotrack" = {};
      };
    };
  }