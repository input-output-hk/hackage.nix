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
      specVersion = "1.2";
      identifier = { name = "bindings-K8055"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joris.Putcuyps@gmail.com";
      author = "Joris Putcuyps";
      homepage = "https://github.com/jputcu/bindings-K8055";
      url = "";
      synopsis = "Bindings to Velleman K8055 dll";
      description = "Bindings to Velleman K8055 dll for interfacing USB I/O board.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."K8055D" or (errorHandler.sysDepError "K8055D")) ];
        buildable = true;
      };
    };
  }