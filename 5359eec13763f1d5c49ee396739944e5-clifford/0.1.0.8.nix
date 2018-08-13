{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clifford";
        version = "0.1.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sophie@traumapony.org";
      author = "Sophie Taylor";
      homepage = "http://github.com/spacekitteh/haskell-clifford";
      url = "";
      synopsis = "A Clifford algebra library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "clifford" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.numeric-prelude)
          (hsPkgs.permutation)
          (hsPkgs.data-ordlist)
          (hsPkgs.converge)
          (hsPkgs.lens)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.stream-fusion)
          (hsPkgs.criterion)
          (hsPkgs.derive)
          (hsPkgs.QuickCheck)
          (hsPkgs.nats)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
          (hsPkgs.hspec)
          (hsPkgs.MemoTrie)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clifford)
            (hsPkgs.hspec)
            (hsPkgs.numeric-prelude)
            (hsPkgs.QuickCheck)
            (hsPkgs.nats)
          ];
        };
      };
      benchmarks = {
        "basic-ops" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clifford)
            (hsPkgs.criterion)
            (hsPkgs.numeric-prelude)
            (hsPkgs.stream-fusion)
          ];
        };
      };
    };
  }