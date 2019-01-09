{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sse42 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-bits"; version = "0.7.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-bits#readme";
      url = "";
      synopsis = "Bit manipulation";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.hw-int)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-string-parse)
          (hsPkgs.safe)
          ];
        };
      tests = {
        "hw-bits-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            ];
          };
        };
      };
    }