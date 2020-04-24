{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "synthesizer-core"; version = "0.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing coded in Haskell: Low level part";
      description = "Low level audio signal processing\nused by the other synthesizer packages.\nThe routines can be really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://code.haskell.org/haskore/revised/synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".\n\nFunctions:\nOscillators, Noise generators, Frequency filters,\nFast Fourier transform for computation of frequency spectrum";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."sample-frame-np" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame-np"))
          (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."numeric-quest" or ((hsPkgs.pkgs-errors).buildDepError "numeric-quest"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."stream-fusion" or ((hsPkgs.pkgs-errors).buildDepError "stream-fusion"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "test" = { buildable = if !flags.buildtests then false else true; };
        "fouriertest" = {
          depends = (pkgs.lib).optionals (flags.buildprofilers) [
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
            (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildprofilers then true else false;
          };
        "speedtest" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest-exp" = {
          depends = (pkgs.lib).optionals (flags.splitbase) [
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest-simple" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        };
      };
    }