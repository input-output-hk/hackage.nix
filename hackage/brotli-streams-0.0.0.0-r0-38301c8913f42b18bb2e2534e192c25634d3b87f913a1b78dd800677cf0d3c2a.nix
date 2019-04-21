{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "brotli-streams"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/brotli-streams";
      url = "";
      synopsis = "IO-Streams interface for Brotli (RFC7932) compression";
      description = "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.\n\nThis package provides an IO-Streams interface for the Brotli compression algorithm.\n\nDecompressing Brotli 'InputStreams' and compressing 'OutputStreams'\nto Brotli streams with tunable (de)compression parameters is supported.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.brotli)
          ];
        };
      tests = {
        "lzma-streams-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.brotli-streams)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }