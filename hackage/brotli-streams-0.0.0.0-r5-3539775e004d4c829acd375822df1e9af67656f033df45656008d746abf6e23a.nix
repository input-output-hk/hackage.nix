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
      specVersion = "1.12";
      identifier = { name = "brotli-streams"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Herbert Valerio Riedel";
      maintainer = "https://github.com/haskell-hvr/brotli-streams";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/haskell-hvr/brotli-streams";
      url = "";
      synopsis = "IO-Streams interface for Brotli (RFC7932) compression";
      description = "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.\n\nThis package provides an IO-Streams interface for the Brotli compression algorithm.\n\nDecompressing Brotli 'InputStreams' and compressing 'OutputStreams'\nto Brotli streams with tunable (de)compression parameters is supported.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."brotli" or (errorHandler.buildDepError "brotli"))
          ];
        buildable = true;
        };
      tests = {
        "lzma-streams-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."brotli-streams" or (errorHandler.buildDepError "brotli-streams"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }