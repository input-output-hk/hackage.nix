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
      identifier = { name = "disposable"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/disposable#readme";
      url = "";
      synopsis = "Allows storing different resource-releasing actions together.";
      description = "Disposable allows storing different resource releasing actions togther in a container.\nThis library is useful for queueing up GHCJS.Foreign.Callback together to be released\nafter a new rendering frame.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or (errorHandler.buildDepError "ghcjs-base-stub"));
        buildable = true;
      };
    };
  }