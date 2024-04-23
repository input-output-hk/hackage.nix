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
      identifier = { name = "MapWith"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David James, 2020.";
      maintainer = "dj112358@outlook.com";
      author = "David James";
      homepage = "";
      url = "";
      synopsis = "mapWith: like fmap, but with additional arguments (isFirst, isLast, etc).";
      description = "fmap over Traversables (including lists), but pass additional parameters to the map function, such as\nisFirst, isLast, prevElt, nextElt, index from start or end, custom params.\nFor examples see https://github.com/davjam/MapWith/blob/master/doc/examples.hs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test-MapWith" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      benchmarks = {
        "perf-prev-next-baseline" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "perf-ind-end-baseline" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "perf-prev-next" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "perf-ind-end" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }