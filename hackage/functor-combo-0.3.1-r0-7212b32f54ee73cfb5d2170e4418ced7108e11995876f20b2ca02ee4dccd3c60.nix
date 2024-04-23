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
      specVersion = "1.6";
      identifier = { name = "functor-combo"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "";
      synopsis = "Functor combinators with tries & zippers";
      description = "Simple functor combinators, their derivatives, and their use for tries\nMaybe split out derivatives and/or tries later.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-inttrie" or (errorHandler.buildDepError "data-inttrie"))
          (hsPkgs."lub" or (errorHandler.buildDepError "lub"))
          (hsPkgs."type-unary" or (errorHandler.buildDepError "type-unary"))
        ];
        buildable = true;
      };
    };
  }