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
      identifier = { name = "ghcid"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/ghcid#readme";
      url = "";
      synopsis = "GHCi based bare bones IDE";
      description = "Either \"GHCi as a daemon\" or \"GHC + a bit of an IDE\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @ghcid --height=10 --command=ghci@, where @--height@ is the height of the console you will use, and @--command@ is the command to start GHCi on your project.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghcid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }