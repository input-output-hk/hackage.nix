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
      identifier = { name = "realworldhaskell"; version = "0.0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2021 Bryan O'Sullivan, John Goerzen, Don Stewart";
      maintainer = "realworldhaskell@aniketd.mailer.me";
      author = "Bryan O'Sullivan, John Goerzen, Don Stewart";
      homepage = "https://github.com/realworldhaskell/book#readme";
      url = "";
      synopsis = "The Real World Haskell Book";
      description = "Living version of the legendary book by The Three Immortals";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }