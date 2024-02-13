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
      specVersion = "3.0";
      identifier = { name = "numhask"; version = "0.12.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2016";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "A numeric class hierarchy.";
      description = "This package provides alternative numeric classes over Prelude.\n\nThe numeric class constellation looks somewhat like:\n\n![nh](docs/other/nh12.svg)\n\n== Usage\n\n>>> {-# LANGUAGE GHC2021 #-}\n>>> {-# LANGUAGE RebindableSyntax #-}\n>>> import NumHask.Prelude\n\nSee \"NumHask\" for a detailed overview.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }