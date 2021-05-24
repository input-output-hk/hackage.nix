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
      specVersion = "1.12";
      identifier = { name = "typed-time"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "Gautier DI FOLCO";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/typed-time#readme";
      url = "";
      synopsis = "A strongly typed way to handle time and date formats";
      description = "Simple type-safe wrapper for <https://hackage.haskell.org/package/time time>'s\n<https://hackage.haskell.org/package/time-1.11.1.2/docs/Data-Time-Format.html Data.Time.Format>.\n\nYou are are to represent a sound formatting at type-level:\n\n\n@\nmyInput :: 'FormattedTime' 'RFC822'\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "typed-time-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typed-time" or (errorHandler.buildDepError "typed-time"))
            ];
          buildable = true;
          };
        };
      };
    }