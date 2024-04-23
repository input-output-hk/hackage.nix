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
      identifier = { name = "pipes-brotli"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ben Gamari, 2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Ben Gamari, Herbert Valerio Riedel";
      homepage = "http://github.com/hvr/pipes-brotli";
      url = "";
      synopsis = "Brotli (RFC7932) compressors and decompressors for the Pipes package";
      description = "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.\n\nThis package provides a @pipes@ interface to the <http://brotli.org Brotli compression algorithm>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."brotli" or (errorHandler.buildDepError "brotli"))
        ];
        buildable = true;
      };
      tests = {
        "pipes-brotli-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-brotli" or (errorHandler.buildDepError "pipes-brotli"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }