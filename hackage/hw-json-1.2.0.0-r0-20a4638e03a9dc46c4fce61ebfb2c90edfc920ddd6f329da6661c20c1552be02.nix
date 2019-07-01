{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; sse42 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-json"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 - 2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-json#readme";
      url = "";
      synopsis = "Memory efficient JSON parser";
      description = "Memory efficient JSON parser. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.attoparsec)
          (hsPkgs.bits-extra)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.hw-balancedparens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-json-standard-cursor)
          (hsPkgs.hw-mquery)
          (hsPkgs.hw-parser)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.hw-simd)
          (hsPkgs.mmap)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.word8)
          (hsPkgs.hw-json-simple-cursor)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
        };
      sublibs = {
        "hw-json-simple-cursor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.word8)
            ];
          };
        };
      exes = {
        "hw-json" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dlist)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-json-simd)
            (hsPkgs.hw-json-standard-cursor)
            (hsPkgs.hw-mquery)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.lens)
            (hsPkgs.mmap)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.hw-json)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      tests = {
        "hw-json-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-json-standard-cursor)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.hw-json)
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
            (hsPkgs.hw-json-standard-cursor)
            (hsPkgs.mmap)
            (hsPkgs.hw-json)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      };
    }