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
      identifier = { name = "MapWith"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David James, 2020.";
      maintainer = "dj112358@outlook.com";
      author = "David James";
      homepage = "https://github.com/davjam/MapWith#readme";
      url = "";
      synopsis = "mapWith: like fmap, but with additional parameters (isFirst, isLast, etc).";
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
        "test-CurryTF" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "tuning" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "benchmarks" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "BenchmarksSimpl" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }