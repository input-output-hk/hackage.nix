{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; sse42 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-json-standard-cursor"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 - 2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-json-standard-cursor#readme";
      url = "";
      synopsis = "Memory efficient JSON parser";
      description = "Memory efficient JSON parser. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bits-extra)
          (hsPkgs.bytestring)
          (hsPkgs.hw-balancedparens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.mmap)
          (hsPkgs.vector)
          (hsPkgs.word8)
          ];
        };
      exes = {
        "hw-json-standard-cursor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-json-simd)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.lens)
            (hsPkgs.mmap)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.hw-json-standard-cursor)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      tests = {
        "hw-json-standard-cursor-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.hw-json-standard-cursor)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.mmap)
            (hsPkgs.hw-json-standard-cursor)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      };
    }