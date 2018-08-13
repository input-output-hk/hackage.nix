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
        name = "hetero-dict";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014-2015 Hirotomo Moriwaki, 2016 Winterland";
      maintainer = "drkoster@qq.com";
      author = "Hirotomo Moriwaki <philopon.dependence@gmail.com>,\nWinterland <drkoster@qq.com>";
      homepage = "";
      url = "";
      synopsis = "Fast heterogeneous data structures";
      description = "Fast heterogeneous data structures";
      buildType = "Simple";
    };
    components = {
      "hetero-dict" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
        ];
      };
      benchmarks = {
        "criterion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hvect)
            (hsPkgs.hetero-dict)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }