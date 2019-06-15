{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-eliasfano"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-eliasfano#readme";
      url = "";
      synopsis = "Elias-Fano";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-int)
          (hsPkgs.hw-packed-vector)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "hw-eliasfano" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-packed-vector)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
            (hsPkgs.hw-eliasfano)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      tests = {
        "hw-eliasfano-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-int)
            (hsPkgs.hw-packed-vector)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hw-eliasfano)
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
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-int)
            (hsPkgs.hw-packed-vector)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            (hsPkgs.vector)
            (hsPkgs.hw-eliasfano)
            ];
          };
        };
      };
    }