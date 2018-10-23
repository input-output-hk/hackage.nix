{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test = false;
      exe = false;
      base_tf_bug = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "SHA";
        version = "1.6.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>,\nRaphael Javaux <raphaeljavaux@gmail.com>";
      author = "Adam Wick <awick@galois.com>, Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Implementations of the SHA suite of message digest functions";
      description = "This library implements the SHA suite of message digest functions,\naccording to NIST FIPS 180-2 (with the SHA-224 addendum), as well\nas the SHA-based HMAC routines. The functions have been tested\nagainst most of the NIST and RFC test vectors for the various\nfunctions. While some attention has been paid to performance,\nthese do not presently reach the speed of well-tuned libraries,\nlike OpenSSL.";
      buildType = "Simple";
    };
    components = {
      "SHA" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "test_sha" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "sha1" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
          ];
        };
        "sha384" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }