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
      specVersion = "2.4";
      identifier = { name = "ilist"; version = "0.4.0.1"; };
      license = "MPL-2.0";
      copyright = "2016-2019 Artyom Kazak (BSD-3-Clause)\n2019-2020 Kowainik (MPL-2.0)";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Artyom";
      homepage = "http://github.com/kowainik/ilist";
      url = "";
      synopsis = "Optimised list functions for doing index-related things";
      description = "Optimised list functions for doing index-related things. They're\nfaster than common idioms in all cases, they avoid\n<https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and\nsometimes they fuse better as well.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }