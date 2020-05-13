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
      identifier = { name = "rlwe-challenges"; version = "0.0.0.1"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "Ring-LWE/LWR challenges using Lol.";
      description = "Contains a library for reading serialized challenges (generated with <https://hackage.haskell.org/package/hprotoc hprotoc>) and an executable used to generate, suppress, and verify RLWE and RLWR challenges using <https://hackage.haskell.org/package/lol Λ ∘ λ> (Lol).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (errorHandler.buildDepError "protocol-buffers-descriptor"))
          ];
        buildable = true;
        };
      exes = {
        "rlwe-challenges" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."lol" or (errorHandler.buildDepError "lol"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
            (hsPkgs."nist-beacon" or (errorHandler.buildDepError "nist-beacon"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."rlwe-challenges" or (errorHandler.buildDepError "rlwe-challenges"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }