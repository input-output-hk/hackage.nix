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
      specVersion = "1.22";
      identifier = { name = "ChannelT"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2016, Alexander Altman";
      maintainer = "alexanderaltman@me.com";
      author = "Alexander Altman";
      homepage = "https://github.com/pthariensflame/ChannelT";
      url = "";
      synopsis = "Generalized stream processors";
      description = "A mutual generalization of [pipes](https://hackage.haskell.org/package/pipes) and [machines](https://hackage.haskell.org/package/machines); a library for exploring a particular corner of the design space of streaming IO (and other related tasks) in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
        ];
        buildable = true;
      };
    };
  }