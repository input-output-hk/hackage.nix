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
      identifier = { name = "reasonable-operational"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tokiwoousaka";
      author = "tokiwoousaka";
      homepage = "https://github.com/tokiwoousaka/reasonable-operational";
      url = "";
      synopsis = "library for takahashi method.";
      description = "create slide as takahashi method.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }