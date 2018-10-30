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
        name = "rncryptor";
        version = "0.0.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Haskell implementation of the RNCryptor file format";
      description = "Pure Haskell implementation of the RNCrytor spec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.io-streams)
          (hsPkgs.cipher-aes)
          (hsPkgs.pbkdf)
        ];
      };
      exes = {
        "rncryptor-decrypt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.cipher-aes)
            (hsPkgs.rncryptor)
          ];
        };
        "rncryptor-encrypt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.cipher-aes)
            (hsPkgs.rncryptor)
          ];
        };
      };
      tests = {
        "rncryptor-tests" = {
          depends  = [
            (hsPkgs.rncryptor)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }