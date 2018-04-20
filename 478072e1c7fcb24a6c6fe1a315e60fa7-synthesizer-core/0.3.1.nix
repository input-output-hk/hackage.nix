{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer-core";
          version = "0.3.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing coded in Haskell: Low level part";
        description = "Low level audio signal processing\nused by the other synthesizer packages.\nThe routines can be really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://darcs.haskell.org/haskore-synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".";
        buildType = "Simple";
      };
      components = {
        synthesizer-core = {
          depends  = [
            hsPkgs.sample-frame-np
            hsPkgs.sox
            hsPkgs.transformers
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.numeric-prelude
            hsPkgs.numeric-quest
            hsPkgs.utility-ht
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.storablevector
            hsPkgs.storable-record
            hsPkgs.storable-tuple
            hsPkgs.QuickCheck
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.process
            ] ++ [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = {
          test = {};
          fusiontest = {};
          speedtest = {};
          speedtest-exp = {
            depends  = pkgs.lib.optionals _flags.splitbase [
              hsPkgs.old-time
              hsPkgs.directory
            ];
          };
          speedtest-simple = {};
        };
      };
    }