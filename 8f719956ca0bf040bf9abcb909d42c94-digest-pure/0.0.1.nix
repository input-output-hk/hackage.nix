{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "digest-pure";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2011 Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "http://github.com/danieldk/digest-pure";
      url = "";
      synopsis = "Pure hash functions for bytestrings";
      description = "This package provides pure hash functions for pure and lazy\nbytestrings, implementing the same interface as the /digest/\npackage.\n\nFor efficiency, use the /digest/ package, which provides\nFFI bindings to efficient code from zlib, instead.\n\nPerformance compared to 'Data.Digest' on a Mac Mini 2010,\n2.4GHz Core 2 Duo, using 'Data.ByteString.Lazy.ByteString':\n\n* Data.Digest.Pure.Adler32: 380 MB/s\n\n* Data.Digest.Adler32: 4906 MB/s\n\n* Data.Digest.Pure.CRC32: 232 MB/s\n\n* Data.Digest.CRC32: 774 MB/s";
      buildType = "Simple";
    };
    components = {
      "digest-pure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.array)
        ];
      };
      tests = {
        "TestSuiteDigestPure" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.digest)
          ];
        };
      };
    };
  }