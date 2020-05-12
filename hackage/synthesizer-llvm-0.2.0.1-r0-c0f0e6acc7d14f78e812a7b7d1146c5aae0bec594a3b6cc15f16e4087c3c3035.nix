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
    flags = { buildexamples = false; buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "synthesizer-llvm"; version = "0.2.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/synthesizer/llvm/";
      synopsis = "Efficient signal processing using runtime compilation";
      description = "Efficient signal processing\nusing runtime compilation and vector instructions.\nIt uses LLVM library, thus it is not bound to a specific CPU.\nIf you compile with Cabal flag @buildExamples@\nyou get the executable @synthi-llvm-server@,\nthat is a realtime software synthesizer\nthat receives MIDI events via ALSA\nand in response plays some tones via ALSA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
          (hsPkgs."llvm-ht" or (errorHandler.buildDepError "llvm-ht"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."functional-arrow" or (errorHandler.buildDepError "functional-arrow"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."synthesizer-alsa" or (errorHandler.buildDepError "synthesizer-alsa"))
          (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
          (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."sample-frame-np" or (errorHandler.buildDepError "sample-frame-np"))
          (hsPkgs."sample-frame" or (errorHandler.buildDepError "sample-frame"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "synthi-llvm-example" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "synthi-llvm-server" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "synthi-llvm-test" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }