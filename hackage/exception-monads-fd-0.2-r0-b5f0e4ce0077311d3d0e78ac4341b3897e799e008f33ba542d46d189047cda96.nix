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
      identifier = { name = "exception-monads-fd"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "Exception monad transformer instances for monads-fd classes.";
      description = "This package provides exception monad transformer instances for\nthe classes defined by monads-fd.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }