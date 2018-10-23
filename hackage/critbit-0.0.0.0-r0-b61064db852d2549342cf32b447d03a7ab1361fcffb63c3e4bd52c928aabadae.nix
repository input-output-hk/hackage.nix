{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "critbit";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/critbit";
      url = "";
      synopsis = "Crit-bit maps and sets";
      description = "Whee.";
      buildType = "Simple";
    };
    components = {
      "critbit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.critbit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.containers)
            (hsPkgs.critbit)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }