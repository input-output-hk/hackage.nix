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
        name = "apiary-redis";
        version = "1.5.1";
      };
      license = "MIT";
      copyright = "(c) 2017 Winter Han";
      maintainer = "Winter Han<drkoster@qq.com>";
      author = "Winter Han<drkoster@qq.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "redis support for apiary web framework.";
      description = "example: <https://github.com/philopon/apiary/blob/master/examples/redis.hs>";
      buildType = "Simple";
    };
    components = {
      "apiary-redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hedis)
          (hsPkgs.apiary)
          (hsPkgs.transformers)
        ];
      };
    };
  }