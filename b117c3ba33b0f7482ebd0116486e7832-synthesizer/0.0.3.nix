{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildexamples = false;
      buildprofilers = false;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "synthesizer";
          version = "0.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "http://darcs.haskell.org/synthesizer/";
        synopsis = "Audio signal processing coded in Haskell";
        description = "Audio signal processing\nfeaturing both low-level functions\nand high-level functions which use physical units,\nabstract from the sample rate and are really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://darcs.haskell.org/haskore-synthesizer/>.\nFor an introduction see @doc/Prologue.txt@.";
        buildType = "Simple";
      };
      components = {
        "synthesizer" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.numeric-prelude
            hsPkgs.numeric-quest
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.storablevector
            hsPkgs.QuickCheck
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.process
              hsPkgs.unix
            ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = {
          "demonstration" = {};
          "traumzauberbaum" = {};
          "test" = {};
          "fusiontest" = {};
          "speedtest" = {};
          "speedtest-exp" = {
            depends  = pkgs.lib.optionals _flags.splitbase [
              hsPkgs.old-time
              hsPkgs.directory
            ];
          };
          "speedtest-simple" = {};
        };
      };
    }