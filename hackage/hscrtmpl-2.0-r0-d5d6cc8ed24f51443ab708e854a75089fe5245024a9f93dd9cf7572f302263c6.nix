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
      specVersion = "2.2";
      identifier = { name = "hscrtmpl"; version = "2.0"; };
      license = "ISC";
      copyright = "2013 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "https://github.com/dino-/hscrtmpl#readme";
      url = "";
      synopsis = "Haskell shell script templates";
      description = "Templates for writing shell scripts in Haskell. Includes some useful functions and examples of things commonly done in bash. And an example of using optparse-applicative in a shell script.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscrtmpl" = {
          depends = [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        "args-example" = {
          depends = [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }