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
      identifier = { name = "turni"; version = "2011.1.15"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Paolo Veronelli ";
      maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com> ";
      author = "";
      homepage = "http://wiki.github.com/paolino/turni";
      url = "";
      synopsis = "shifts scheduling tool";
      description = "..";
      buildType = "Simple";
    };
    components = {
      exes = {
        "settimana" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
          buildable = true;
        };
      };
    };
  }