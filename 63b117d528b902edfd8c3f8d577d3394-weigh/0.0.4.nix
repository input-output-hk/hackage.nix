{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      weigh-maps = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "weigh";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "FP Complete";
      maintainer = "chrisdone@fpcomplete.com";
      author = "Chris Done";
      homepage = "https://github.com/fpco/weigh#readme";
      url = "";
      synopsis = "Measure allocations of a Haskell functions/values";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "weigh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
        ];
      };
      tests = {
        "weigh-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.weigh)
            (hsPkgs.deepseq)
          ];
        };
        "weigh-maps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.weigh)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring-trie)
            (hsPkgs.random)
          ];
        };
      };
    };
  }