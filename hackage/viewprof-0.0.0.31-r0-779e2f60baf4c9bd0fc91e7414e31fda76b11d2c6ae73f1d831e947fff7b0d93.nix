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
      identifier = { name = "viewprof"; version = "0.0.0.31"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2019 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <me@maoe.name>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/viewprof";
      url = "";
      synopsis = "Text-based interactive GHC .prof viewer";
      description = "viewprof is a text-based interactive GHC .prof viewer.\n\nYou can find a screenshot and some explanation in\n<https://github.com/maoe/viewprof#readme the README>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "viewprof" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc-prof" or (errorHandler.buildDepError "ghc-prof"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }