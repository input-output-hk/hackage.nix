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
      buildtests = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "midi";
        version = "0.1.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/MIDI";
      url = "";
      synopsis = "Handling of MIDI messages and files";
      description = "MIDI is the Musical Instrument Digital Interface.\nThe package contains definition of realtime and file MIDI messages,\nreading and writing MIDI files,\nand some definitions from General MIDI standard.\nIt contains no sending and receiving of MIDI messages.\nCf. @alsa-seq@, @PortMidi@, @hmidi@, @alsa@, @alsa-midi@ packages.\nFor music composition with MIDI output, see @haskore@.\nAlternate packages are @HCodecs@, @zmidi-core@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.explicit-exception)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.transformers)
          (hsPkgs.monoid-transformer)
          (hsPkgs.QuickCheck)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.random)
            (hsPkgs.base)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = { "test" = {}; };
    };
  }