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
      identifier = { name = "realworldhaskell"; version = "0.0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "realworldhaskell@aniketd.mailer.me";
      author = "Bryan O'Sullivan, Don Stewart, John Goerzen";
      homepage = "https://github.com/realworldhaskell/book#readme";
      url = "";
      synopsis = "The Real World Haskell Book";
      description = "Please see the README on GitHub at <https://github.com/realworldhaskell/book#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "realworldhaskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."realworldhaskell" or (errorHandler.buildDepError "realworldhaskell"))
            ];
          buildable = true;
          };
        };
      };
    }