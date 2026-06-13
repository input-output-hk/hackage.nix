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
      identifier = { name = "composition"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "";
      url = "";
      synopsis = "Combinators for unorthodox function composition";
      description = "Just a silly library for composing functions.\nIf anyone takes this package seriously,\nplease explain to me why.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }