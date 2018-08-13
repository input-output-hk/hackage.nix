{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "midi";
        version = "0.2.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/MIDI";
      url = "";
      synopsis = "Handling of MIDI messages and files";
      description = "MIDI is the Musical Instrument Digital Interface.\nThe package contains definition of realtime and file MIDI messages,\nreading and writing MIDI files,\nand some definitions from the General MIDI standard.\nIt contains no sending and receiving of MIDI messages.\nFor this purpose see the @alsa-seq@, @jack@, @PortMidi@, @hmidi@ packages.\nFor music composition with MIDI output, see @haskore@.\nAlternative packages are @HCodecs@, @zmidi-core@.";
      buildType = "Simple";
    };
    components = {
      "midi" = {
        depends  = [
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.utility-ht)
          (hsPkgs.explicit-exception)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.transformers)
          (hsPkgs.monoid-transformer)
          (hsPkgs.QuickCheck)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.random)
            (hsPkgs.base)
          ]
          else [ (hsPkgs.base) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.midi)
            (hsPkgs.explicit-exception)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.utility-ht)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.base)
          ];
        };
      };
    };
  }