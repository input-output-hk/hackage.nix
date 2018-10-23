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
        name = "hashing";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016 Baojun Wang";
      maintainer = "wangbj@gmail.com";
      author = "Baojun Wang";
      homepage = "https://github.com/wangbj/hashing";
      url = "";
      synopsis = "A pure haskell library implements several hash algorithms.";
      description = "hashing is a pure haskell hash library, supported hash algorithm: SHA1\\/SHA224\\/SHA256\\/SHA384\\/SHA512\nMD5 and Whirlpool.\n\nIt provides a simple interface 'hash' and 'hashLazy' to compute a hash value Based on the type signature.\n\nPerformance wise it only has 1\\/5 - 1\\/15 of native C implementations, or 'cryptonite'.\n\nCompare to other pure hash libraries such as PureMD5/SHA, it provides a simpler interface,\nimplements more algorithms, and has less dependencies.";
      buildType = "Simple";
    };
    components = {
      "hashing" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "hashing-exe" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hashing)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "hashing-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hashing)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.cryptonite)
          ];
        };
      };
    };
  }