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
      identifier = { name = "eddie"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Mike Meyer";
      maintainer = "mwm@mired.org";
      author = "Mike Meyer";
      homepage = "http://chiselapp.com/user/mwm/repository/eddie/";
      url = "";
      synopsis = "Command line file filtering with haskell";
      description = "A tool to let you use short haskell expressions to filter\nfiles at the command line.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "eddie" = {
          depends = [
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          ];
          buildable = true;
        };
      };
    };
  }