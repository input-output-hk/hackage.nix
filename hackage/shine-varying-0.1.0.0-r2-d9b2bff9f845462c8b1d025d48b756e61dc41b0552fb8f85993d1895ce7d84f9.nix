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
      specVersion = "1.8";
      identifier = { name = "shine-varying"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2016 Francesco Gazzetta";
      maintainer = "Francesco Gazzetta <francygazz@gmail.com>";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/shine-varying";
      url = "";
      synopsis = "FRP interface for shine using the varying package";
      description = "This package exports a function that lets you control shine's\nfunctionality through a `Var` that maps from inputs to a `Picture`\nplus a bunch of utility `Var`s, like the current time and the\nkeypresses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
          (hsPkgs."varying" or (errorHandler.buildDepError "varying"))
          (hsPkgs."keycode" or (errorHandler.buildDepError "keycode"))
        ];
        buildable = true;
      };
      tests = {
        "test-shine-varying-misc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
            (hsPkgs."shine-varying" or (errorHandler.buildDepError "shine-varying"))
            (hsPkgs."varying" or (errorHandler.buildDepError "varying"))
            (hsPkgs."keycode" or (errorHandler.buildDepError "keycode"))
          ];
          buildable = true;
        };
        "test-shine-varying-resize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
            (hsPkgs."shine-varying" or (errorHandler.buildDepError "shine-varying"))
          ];
          buildable = true;
        };
      };
    };
  }