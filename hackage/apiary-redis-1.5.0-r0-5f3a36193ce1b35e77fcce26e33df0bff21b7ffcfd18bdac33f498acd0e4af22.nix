{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary-redis"; version = "1.5.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."apiary" or (errorHandler.buildDepError "apiary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }