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
    flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "synthesizer-core"; version = "0.5"; };
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
          (hsPkgs."sample-frame-np" or (errorHandler.buildDepError "sample-frame-np"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."numeric-quest" or (errorHandler.buildDepError "numeric-quest"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            ]);
        buildable = true;
        };
      exes = {
        "test" = { buildable = if !flags.buildtests then false else true; };
        "fouriertest" = {
          depends = (pkgs.lib).optionals (flags.buildprofilers) [
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildprofilers then true else false;
          };
        "speedtest" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest-exp" = {
          depends = (pkgs.lib).optionals (flags.splitbase) [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = if !flags.buildprofilers then false else true;
          };
        "speedtest-simple" = {
          buildable = if !flags.buildprofilers then false else true;
          };
        };
      };
    }