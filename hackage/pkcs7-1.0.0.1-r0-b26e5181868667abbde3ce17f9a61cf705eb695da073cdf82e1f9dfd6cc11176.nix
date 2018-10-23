{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pkcs7";
        version = "1.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "coder@kyleisom.net";
      author = "K. Isom";
      homepage = "https://github.com/kisom/pkcs7";
      url = "";
      synopsis = "PKCS #7 padding in Haskell";
      description = "Implements PKCS #7 padding.\nThis implements the PKCS #7 padding scheme. This\nscheme is defined in <http://tools.ietf.org/html/rfc5652#section-6.3 RFC 5652, section 6.3>.\nStrings will be padded out to multiples of the block\nsize; for example, a 5-byte string with an 8-byte\nblock size will have three bytes of padding added. If\nthe length is already a multiple of the block size,\nan entire block size worth of padding is added.\nThe padding bytes are all set to the number of\npadding bytes. Returning to the previous example, the\npadding string would be three bytes of the byte 0x03.\nUnpadding checks the length and padding, and if\nthis is valid, strips off the padding.";
      buildType = "Simple";
    };
    components = {
      "pkcs7" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test-pkcs7" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }