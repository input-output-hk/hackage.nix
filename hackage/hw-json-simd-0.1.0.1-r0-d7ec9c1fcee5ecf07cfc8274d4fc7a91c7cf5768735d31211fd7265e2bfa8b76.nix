{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { avx2 = false; bmi2 = false; sse42 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-json-simd"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 - 2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-json-simd#readme";
      url = "";
      synopsis = "SIMD-based JSON semi-indexer";
      description = "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hw-prim)
          (hsPkgs.lens)
          (hsPkgs.vector)
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      exes = {
        "hw-json-simd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-prim)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
            (hsPkgs.hw-json-simd)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.semigroups);
          };
        };
      tests = {
        "hw-json-simd-test" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-prim)
            (hsPkgs.lens)
            (hsPkgs.vector)
            (hsPkgs.hw-json-simd)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.transformers);
          };
        };
      };
    }