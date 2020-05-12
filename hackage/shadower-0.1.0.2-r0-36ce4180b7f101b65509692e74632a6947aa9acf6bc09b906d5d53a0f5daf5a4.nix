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
      identifier = { name = "shadower"; version = "0.1.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "karun012@gmail.com";
      author = "Karun Ramakrishnan";
      homepage = "http://github.com/karun012/shadower";
      url = "";
      synopsis = "An automated way to run doctests in files that are changing";
      description = "Shadower watches folders with Haskell sources, and runs doctests in files that are modified";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shadower" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }