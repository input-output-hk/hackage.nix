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
      identifier = { name = "composition"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "";
      url = "";
      synopsis = "Combinators for unorthodox function composition";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }