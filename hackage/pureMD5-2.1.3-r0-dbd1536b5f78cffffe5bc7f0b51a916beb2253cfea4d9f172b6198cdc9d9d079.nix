{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pureMD5";
        version = "2.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell-only implementation of the MD5 digest (hash) algorithm.";
      description = "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports\nthe crypto-api class interface.";
      buildType = "Simple";
    };
    components = {
      "pureMD5" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "MD5Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pureMD5)
            (hsPkgs.crypto-api-tests)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.pretty-hex)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }