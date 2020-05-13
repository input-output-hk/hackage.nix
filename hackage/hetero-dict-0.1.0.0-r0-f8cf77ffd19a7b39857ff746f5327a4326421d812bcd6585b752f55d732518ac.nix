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
      identifier = { name = "hetero-dict"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hirotomo Moriwaki, 2016 Winterland";
      maintainer = "drkoster@qq.com";
      author = "Hirotomo Moriwaki <philopon.dependence@gmail.com>,\nWinterland <drkoster@qq.com>";
      homepage = "";
      url = "";
      synopsis = "Fast read-only heterogeneous data structures";
      description = "Fast read-only heterogeneous data structures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
            (hsPkgs."hetero-dict" or (errorHandler.buildDepError "hetero-dict"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }