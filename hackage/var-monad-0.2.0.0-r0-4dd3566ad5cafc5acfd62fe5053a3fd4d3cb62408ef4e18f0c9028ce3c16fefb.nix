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
      identifier = { name = "var-monad"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2017 Chris Martin";
      maintainer = "ch.martin@gmail.com";
      author = "Chris Martin";
      homepage = "https://github.com/chris-martin/var-monad";
      url = "";
      synopsis = "The VarMonad typeclass, generalizing types of references.";
      description = "The @VarMonad@ typeclass, as defined by /Type Classes: an exploration of the design space/ by SPJ et al, 1997.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }