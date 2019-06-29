{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-xml"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky\n, 2016-2019 Alexey Raga";
      maintainer = "alexey.raga@gmail.com";
      author = "John Ky,\nAlexey Raga";
      homepage = "http://github.com/haskell-works/hw-xml#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Conduits for tokenizing streams. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hw-balancedparens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-conduit)
          (hsPkgs.hw-parser)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.word8)
          ];
        };
      exes = {
        "hw-xml-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.vector)
            (hsPkgs.hw-xml)
            ];
          };
        };
      tests = {
        "hw-xml-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-conduit)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.hw-xml)
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
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-conduit)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
            (hsPkgs.hw-xml)
            ];
          };
        };
      };
    }