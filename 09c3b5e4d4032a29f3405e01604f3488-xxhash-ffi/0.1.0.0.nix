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
      specVersion = "1.10";
      identifier = {
        name = "xxhash-ffi";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/haskell-haskey/xxhash-ffi#readme";
      url = "";
      synopsis = "Bindings to the C implementation the xxHash algorithm";
      description = "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.";
      buildType = "Simple";
    };
    components = {
      "xxhash-ffi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "xxhash-ffi-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xxhash-ffi)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "xxhash-ffi-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xxhash-ffi)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.digest)
            (hsPkgs.hashable)
            (hsPkgs.murmur-hash)
            (hsPkgs.xxhash)
          ];
        };
      };
    };
  }