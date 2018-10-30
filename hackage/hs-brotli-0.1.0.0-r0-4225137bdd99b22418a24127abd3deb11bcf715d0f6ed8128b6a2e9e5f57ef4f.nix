{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hs-brotli";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/brotli#readme";
      url = "";
      synopsis = "Compression and decompression in the brotli format";
      description = "This package provides a pure interface for compressing and\ndecompressing streams of data represented as strict or lazy\n'ByteString's. It uses the\n<https://en.wikipedia.org/wiki/Brotli brotli C library>\nso it has high performance. It supports the \\\"brotli\\\",\ncompression format.\n\nIt provides a convenient high level API suitable for most\ntasks and for the few cases where more control is needed it\nprovides access to the full brotli feature set";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."brotlidec")
          (pkgs."brotlienc")
        ];
        pkgconfig = [
          (pkgconfPkgs.libbrotlidec)
          (pkgconfPkgs.libbrotlienc)
        ];
      };
      tests = {
        "brotli-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.brotli)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }