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
      identifier = { name = "SimpleH"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A light, clean and powerful Haskell utility library";
      description = "SimpleH is a Prelude complement that defines a few very useful abstractions, such as Monad transformers, Lenses, parser combinators, reactive abstractions and a few others.         ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
        ];
        buildable = true;
      };
    };
  }