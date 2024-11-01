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
      specVersion = "1.2";
      identifier = { name = "sample-frame"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/~thielema/sample-frame/core/";
      synopsis = "Handling of samples in an (audio) signal";
      description = "This package provides a type class\nto handle signed and unsigned samples\nof various size and number of channels in a uniform way.\n\nWe expect that you use the types Int8, Word8 and so on\nfor monophonic samples and thus provide instances of the class for them.\nFurther we define Stereo record and mu-law sample type.\nQuadrophony can be achieved by nested Stereo value,\nbut I'm uncertain, whether this is a good way to go.\nMaybe we add 5+1 channels or so in future.\n\nThis is used by packages sox, alsa, synthesizer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]);
        buildable = true;
      };
    };
  }