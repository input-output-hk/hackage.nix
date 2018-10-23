{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "critbit";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Bryan O'Sullivan and others";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/critbit";
      url = "";
      synopsis = "Crit-bit maps and sets";
      description = "This package implements crit-bit trees, a key-value container type\nfor storing keys that can be treated as bitstrings (e.g.\n'ByteString' and 'Text').\n\nCompared to the data structures from the containers and\nunordered-containers packages, you will find that sometimes the\nfunctions implemented in this package are faster, sometimes\nslower.\n\nIn many cases, a 'CritBit' tree provides performance close to that\nof a 'HashMap', while providing ordered storage and traversal\nlike a 'Map'.";
      buildType = "Simple";
    };
    components = {
      "critbit" = {
        depends  = [
          (hsPkgs.array)
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
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.critbit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
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
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }