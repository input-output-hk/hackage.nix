{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-fingertree";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006 Ross Paterson,\nRalf Hinze,\n(c) 2017-2018 John Ky";
        maintainer = "John Ky <newhoggy@gmail.com>";
        author = "";
        homepage = "https://github.com/haskell-works/hw-fingertree#readme";
        url = "";
        synopsis = "Generic finger-tree structure, with example instances";
        description = "A general sequence representation with arbitrary\nannotations, for use as a base for implementations of\nvarious collection types, with examples, as described\nin section 4 of\n\n* Ralf Hinze and Ross Paterson,\n\\\"Finger trees: a simple general-purpose data structure\\\",\n/Journal of Functional Programming/ 16:2 (2006) pp 197-217.\n<http://staff.city.ac.uk/~ross/papers/FingerTree.html>\n\nFor a tuned sequence type, see @Data.Sequence@ in the\n@containers@ package, which is a specialization of\nthis structure.";
        buildType = "Simple";
      };
      components = {
        "hw-fingertree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          "hw-fingertree-tests" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.hedgehog
              hsPkgs.hspec
              hsPkgs.hw-fingertree
              hsPkgs.hw-hspec-hedgehog
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }