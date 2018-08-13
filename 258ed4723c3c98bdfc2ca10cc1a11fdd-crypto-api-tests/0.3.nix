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
      specVersion = "1.6";
      identifier = {
        name = "crypto-api-tests";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "http://trac.haskell.org/crypto-api/wiki";
      url = "";
      synopsis = "A test framework and KATs for cryptographic operations.";
      description = "A test framework for hash and cipher operations using\nthe crypto-api interface.  Known answer tests (KATs)\nfor common cryptographic algorithms are included.\nPatches welcome (both adding KATs for more algorithms\nor property tests for classes of algorithms).";
      buildType = "Simple";
    };
    components = {
      "crypto-api-tests" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.crypto-api)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }