{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
          (hsPkgs."llvm-ht" or ((hsPkgs.pkgs-errors).buildDepError "llvm-ht"))
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          (hsPkgs."functional-arrow" or ((hsPkgs.pkgs-errors).buildDepError "functional-arrow"))
          (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
          (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
          (hsPkgs."synthesizer-alsa" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-alsa"))
          (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
          (hsPkgs."alsa-pcm" or ((hsPkgs.pkgs-errors).buildDepError "alsa-pcm"))
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
          (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
          (hsPkgs."sample-frame-np" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame-np"))
          (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
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
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }