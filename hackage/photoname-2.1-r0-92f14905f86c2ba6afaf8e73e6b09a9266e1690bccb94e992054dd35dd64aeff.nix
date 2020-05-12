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
      specVersion = "1.2";
      identifier = { name = "photoname"; version = "2.1"; };
      license = "BSD-3-Clause";
      copyright = "2007, 2008 Dino Morelli ";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli ";
      homepage = "http://ui3.info/d/proj/photoname.html";
      url = "";
      synopsis = "Rename JPEG photo files based on shoot date";
      description = "Command-line utility for renaming/moving photo image files based on\nEXIF tags. Written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "photoname" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exif" or (errorHandler.buildDepError "exif"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }