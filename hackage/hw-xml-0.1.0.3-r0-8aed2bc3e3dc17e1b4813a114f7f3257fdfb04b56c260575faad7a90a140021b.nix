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
        name = "hw-xml";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky,\nAlexey Raga";
      maintainer = "alexey.raga@gmail.com";
      author = "John Ky,\nAlexey Raga";
      homepage = "http://github.com/haskell-works/hw-xml#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-xml" = {
        depends  = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-xml)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "hw-xml-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-conduit)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-xml)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-conduit)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-xml)
            (hsPkgs.mmap)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }