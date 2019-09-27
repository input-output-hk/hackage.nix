let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sound-collage"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Approximate a song from other pieces of sound";
      description = "This program allows you to decompose a set of audio files into chunks\nand use these chunks for building a new audio file\nthat matches another given audio file.\nThis is very similar to constructing an image\nfrom small images that are layed out in a rectangular grid.\n\nThe simplest way to use the program consists of the following two steps:\n\nStep 1: Add chunks from an audio file to the pool:\n\n> sound-collage --chunksize=8192 decompose track00.wav pool/%06d\n> sound-collage --chunksize=8192 decompose track01.wav pool/%06d\n\nAttention:\nThe chunk size and the number of (stereo) channels\nmust be the same for all added files.\nThese parameters are not stored in the pool itself\nand thus consistency cannot be checked.\n\nAdding the same set of audio files to the chunk pool again\nwill fool the automatic chunk size determination in the composition step.\nYou should not add an audio file twice anyway,\nsince it increases disk usage and computation time\nand has no effect to the result.\n\nStep 2: Compose an approximation of an audio file\nusing chunks from the pool\n\n> sound-collage auto pool/ music.wav collage.f32\n\nIt performs four steps:\n\n1. Decompose @music.wav@ into chunks\n\n2. Find best matching chunk from the pool\nfor every chunk in the audio file.\n\n3. Check where it is better to take an\noriginally adjacent chunk from the pool.\n\n4. Compose matching chunks to a single file.\n\nYou can run these steps manually in order to inspect the results,\nrepeat individual steps or omit them (e.g. step 3).\nHere an example for stereo music file:\n\n> sound-collage --chunksize=8192 decompose music.wav music/%06d\n\n> sound-collage --chunksize=8192 --channels=2 associate pool/ music/ collage/%06d\n\n> sound-collage --chunksize=8192 --channels=2 adjacent pool/ music/ collage/\n\n> sound-collage --chunksize=8192 --channels=2 compose collage/ collage.f32\n\nFor the @adjacent@ step there is the @--cohesion@ option.\nIt specifies how much adjacent chunks shall be prefered to the best matching chunk.\n(Please note, that the best matching chunk is not actually the best matching one,\nbut only an approximatively best one. See below for details.)\nIf cohesion is 1 then an adjacent chunk is only prefered\nif it matches better than the best matching chunk.\nIf cohesion is larger then adjacent chunks are more often prefered\nto the best matching one.\nIf cohesion is zero, then always the best matching chunk is chosen.\nThis is like skipping the @--adjacent@ step completely.\n\nYou can use any input format supported by SoX,\nbut output is always raw @Float@ format, i.e. @.f32@.\nSpectra are computed and stored in @Float@\n(single precision floating point)\nand chunks in the pool are stored in @Int16@.\n\nThis is how it works:\nSince there is a lot of data to process\nI have chosen the following optimization\nthat however influences the result.\nI group all chunks according to the index of the largest Fourier coefficient.\nAll chunks with the same index are stored in one file.\nFor the search of matching chunks I traverse the Fourier indices.\nThen e.g. for Fourier index 10 I load all chunks from the pool\nand all chunks from the decomposed music\nand find best matching chunks only within this group.\nThis way I may miss the best matching chunk,\nbut save a lot of computation (I hope so).\n\nBtw. if you also add @music.wav@ to the pool,\nthen @music.wav@ will not be restored by the collage algorithm\nsince the audio files are decomposed into overlapping chunks.\n\nApproximation is done using simple L2 norm.\nIt is well-known that this does not match human perception very good.\nMaybe it is a good idea to work with lossily compressed audio files\nwhere all non-audible waves are already eliminated.\nIn this case the L2 norm might better match\nthe human idea of similarity of audio chunks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sound-collage" = {
          depends = [
            (hsPkgs."fft" or (buildDepError "fft"))
            (hsPkgs."carray" or (buildDepError "carray"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."storablevector-carray" or (buildDepError "storablevector-carray"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."soxlib" or (buildDepError "soxlib"))
            (hsPkgs."sample-frame" or (buildDepError "sample-frame"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }