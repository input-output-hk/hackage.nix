{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sse42 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-bits"; version = "0.7.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 John Ky";
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
          (hsPkgs.bytestring)
          (hsPkgs.hw-int)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-string-parse)
          (hsPkgs.safe)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "hw-bits-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hw-bits)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.vector)
            (hsPkgs.hw-bits)
            ];
          };
        };
      };
    }