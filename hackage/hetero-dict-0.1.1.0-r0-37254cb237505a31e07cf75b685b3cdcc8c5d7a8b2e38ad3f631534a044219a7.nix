{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hetero-dict";
        version = "0.1.1.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
        ];
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.template-haskell)
            (hsPkgs.vinyl)
            (hsPkgs.hvect)
            (hsPkgs.hetero-dict)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }