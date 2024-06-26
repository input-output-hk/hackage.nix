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
      identifier = { name = "filepath"; version = "1.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/filepath/";
      url = "";
      synopsis = "Library for manipulating FilePaths in a cross platform way.";
      description = "A library for 'FilePath' manipulations, using Posix or Windows filepaths\ndepending on the platform.\n\nBoth \"System.FilePath.Posix\" and \"System.FilePath.Windows\" provide\nthe same interface. See either for examples and a list of the\navailable functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "filepath-tests" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }