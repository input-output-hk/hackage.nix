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
      specVersion = "1.6";
      identifier = { name = "elm-build-lib"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2014 Joey Eremondi";
      maintainer = "joey@eremondi.com";
      author = "Joey Eremondi";
      homepage = "http://github.com/JoeyEremondi/elm-build-lib";
      url = "";
      synopsis = "Elm compiler wrapper";
      description = "Wrappers around the Elm binary to compile elm source strings into Javascript within Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }