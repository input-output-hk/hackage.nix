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
      identifier = { name = "hscrtmpl"; version = "1.6"; };
      license = "ISC";
      copyright = "2018 Dino Morelli";
      maintainer = "dino@ui3.info";
      author = "Dino Morelli";
      homepage = "https://github.com/dino-/hscrtmpl#readme";
      url = "";
      synopsis = "Haskell shell script template";
      description = "A template for writing shell scripts in Haskell. Contains some useful functions and examples of things commonly done in bash.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscrtmpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }