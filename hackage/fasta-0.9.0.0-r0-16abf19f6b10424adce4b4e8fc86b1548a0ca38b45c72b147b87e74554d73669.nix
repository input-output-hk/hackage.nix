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
      specVersion = "1.8";
      identifier = { name = "fasta"; version = "0.9.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "https://github.com/GregorySchwartz/fasta";
      url = "";
      synopsis = "A simple, mindless parser for fasta files.";
      description = "The fasta type specifically split by String, Text, Lazy Text, ByteString, and Lazy ByteString for simplicity and ease of use, although lacking many features of other parsers. Mainly for use with bioinformatics applications which are very general and need no conversion overhead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          ];
        buildable = true;
        };
      };
    }