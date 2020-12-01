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
      specVersion = "2.4";
      identifier = { name = "numhask-free"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2020";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-free#readme";
      url = "";
      synopsis = "numerical free algebras";
      description = "__The Free Num is a Sequence of Bags.__\n\n\"NumHask.FreeAlgebra\" explains.\n\n/But when we really delve into the reasons for why we can't let something go, there are only two: an attachment to the past or a fear for the future./ ~ Marie Kondo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."numhask-free" or (errorHandler.buildDepError "numhask-free"))
            ];
          buildable = true;
          };
        };
      };
    }