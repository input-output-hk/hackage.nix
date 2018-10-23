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
        name = "murmurhash3";
        version = "1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "niswegmann@gmail.com";
      author = "Nis N. Wegmann";
      homepage = "https://github.com/niswegmann/murmurhash3";
      url = "";
      synopsis = "32-bit non-cryptographic hashing";
      description = "MurmurHash is a family of non-cryptographic hash functions suitable for\ngeneral hash-based lookup. This implementation uses the MurmurHash3\nalgorithm and provides a type class for computing 32-bit hashes from all\nprevalent data types in the Haskell 2010 Standard.";
      buildType = "Simple";
    };
    components = {
      "murmurhash3" = {
        depends  = [
          (hsPkgs.haskell2010)
        ];
      };
    };
  }