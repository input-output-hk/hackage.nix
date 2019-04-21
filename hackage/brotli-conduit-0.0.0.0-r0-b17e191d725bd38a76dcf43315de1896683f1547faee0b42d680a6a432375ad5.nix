{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "brotli-conduit"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Nathan Howell, Herbert Valerio Riedel";
      homepage = "http://github.com/hvr/brotli-conduit";
      url = "";
      synopsis = "Conduit interface for Brotli (RFC7932) compression.";
      description = "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.\n\nThis package provides an Conduit interface for the <https://brotli.org Brotli compression algorithm>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.brotli)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "brotli-conduit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brotli-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }