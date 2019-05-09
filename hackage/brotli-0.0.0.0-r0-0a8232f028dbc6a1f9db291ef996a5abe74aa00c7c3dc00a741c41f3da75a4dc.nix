{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "brotli"; version = "0.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016, Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/brotli";
      url = "";
      synopsis = "Brotli (RFC7932) compression and decompression";
      description = "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.\n\nThis package provides a pure interface for compressing and\ndecompressing Brotli streams of data represented as lazy @ByteString@s. A\nmonadic incremental interface is provided as well. This package\nrelies on Google's C implementation.\n\nThe following packages are based on this package and provide\nAPI support for popular streaming frameworks:\n\n* </package/brotli-streams brotli-streams> (for </package/io-streams io-streams>)\n\n* </package/pipes-brotli pipes-brotli> (for </package/pipes pipes>)\n\n* </package/brotli-conduit brotli-conduit> (for </package/conduit conduit>)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.transformers) ];
        pkgconfig = [
          (pkgconfPkgs."libbrotlienc")
          (pkgconfPkgs."libbrotlidec")
          ];
        };
      tests = {
        "brotli-tests" = {
          depends = [
            (hsPkgs.brotli)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }