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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "phonetic-code"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2008 Bart Massey";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "http://wiki.cs.pdx.edu/bartforge/phonetic-code";
      url = "http://wiki.cs.pdx.edu/cabal-packages/phonetic-code-0.1.tar.gz";
      synopsis = "Phonetic codes: Soundex and Phonix";
      description = "This package implements the \"phonetic coding\" algorithms\nSoundex and Phonix.  A phonetic coding algorithm\ntransforms a word into a similarity hash based on an\napproximation of its sounds.  Thus, similar-sounding\nwords tend to have the same hash.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
        buildable = true;
        };
      };
    }