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
      specVersion = "2.0";
      identifier = { name = "tokenizer-streaming"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2019 Enum Cohrs";
      maintainer = "darcs@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "A variant of tokenizer-monad that supports streaming.";
      description = "This monad transformer is a modification of tokenizer-monad\nthat can work on streams of text/string chunks or even on\n(Unicode) bytestring streams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."tokenizer-monad" or (errorHandler.buildDepError "tokenizer-monad"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          ];
        buildable = true;
        };
      };
    }