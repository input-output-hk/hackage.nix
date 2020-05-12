{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "midi"; version = "0.2.2.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monoid-transformer" or (errorHandler.buildDepError "monoid-transformer"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }