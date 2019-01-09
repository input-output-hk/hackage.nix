{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sse42 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-dump"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-dump#readme";
      url = "";
      synopsis = "File Dump";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bits-extra)
          (hsPkgs.bytestring)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.vector)
          (hsPkgs.safe)
          ];
        };
      exes = {
        "hw-dump" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hw-dump)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "hw-dump-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-dump)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            (hsPkgs.hw-dump)
            ];
          };
        };
      };
    }