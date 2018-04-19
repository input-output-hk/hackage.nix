{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildexamples = false;
      buildprofilers = false;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing coded in Haskell";
        description = "Audio signal processing\nfeaturing both low-level functions\nand high-level functions which use physical units,\nabstract from the sample rate and are really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://darcs.haskell.org/haskore-synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".\nFor an overview of the organization of the package\nand the discussion of various design issues see \"Synthesizer.Overview\".";
        buildType = "Simple";
      };
      components = {
        synthesizer = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.numeric-prelude
            hsPkgs.utility-ht
            hsPkgs.storable-record
            hsPkgs.sox
            hsPkgs.gnuplot
            hsPkgs.numeric-quest
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.storablevector
            hsPkgs.filepath
            hsPkgs.QuickCheck
          ] ++ (if _flags.category
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.process
            ]
            else if _flags.splitbase
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
          demonstration = {};
          traumzauberbaum = {};
          test = {};
          fusiontest = {};
          speedtest = {};
          speedtest-exp = {
            depends  = optionals _flags.splitbase [
              hsPkgs.old-time
              hsPkgs.directory
            ];
          };
          speedtest-simple = {};
        };
      };
    }