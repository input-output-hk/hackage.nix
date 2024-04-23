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
      identifier = { name = "mcmc-synthesis"; version = "0.1.2.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jacobltaylor@gmail.com";
      author = "Jacob Taylor, Tikhon Jelvis";
      homepage = "";
      url = "";
      synopsis = "MCMC applied to probabilistic program synthesis";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
        ];
        buildable = true;
      };
    };
  }