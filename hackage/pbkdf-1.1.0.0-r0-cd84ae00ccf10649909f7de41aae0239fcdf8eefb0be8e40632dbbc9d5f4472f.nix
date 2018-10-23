{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "pbkdf";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Chris Dornan";
      maintainer = "chris.dornan@irisconnect.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/pbkdf";
      url = "";
      synopsis = "Haskell implementation of the PBKDF functions from RFC-2898.";
      description = "The Password Based Key Derivation Functions described in RFC-2898 with a test suite to verify that it works with the test vectors published in RFC6070.";
      buildType = "Simple";
    };
    components = {
      "pbkdf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.byteable)
          (hsPkgs.bytedump)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "rfc-6070" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.byteable)
            (hsPkgs.bytedump)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.pbkdf)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }