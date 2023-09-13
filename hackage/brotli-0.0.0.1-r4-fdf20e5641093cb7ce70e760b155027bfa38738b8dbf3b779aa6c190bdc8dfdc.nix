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
      identifier = { name = "brotli"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016, Herbert Valerio Riedel";
      maintainer = "https://github.com/haskell-hvr/brotli";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/haskell-hvr/brotli";
      url = "";
      synopsis = "Brotli (RFC7932) compression and decompression";
      description = "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.\n\nThis package provides a pure interface for compressing and\ndecompressing Brotli streams of data represented as lazy @ByteString@s. A\nmonadic incremental interface is provided as well. This package\nrelies on Google's C implementation.\n\nThe following packages are based on this package and provide\nAPI support for popular streaming frameworks:\n\n* </package/brotli-streams brotli-streams> (for </package/io-streams io-streams>)\n\n* </package/pipes-brotli pipes-brotli> (for </package/pipes pipes>)\n\n* </package/brotli-conduit brotli-conduit> (for </package/conduit conduit>)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libbrotlienc" or (errorHandler.pkgConfDepError "libbrotlienc"))
          (pkgconfPkgs."libbrotlidec" or (errorHandler.pkgConfDepError "libbrotlidec"))
          ];
        buildable = true;
        };
      tests = {
        "brotli-tests" = {
          depends = [
            (hsPkgs."brotli" or (errorHandler.buildDepError "brotli"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }