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
      identifier = { name = "hooks-dir"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2014 Tobias Florek";
      maintainer = "me@ibotty.net";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/hooks-dir";
      url = "";
      synopsis = "run executables in a directory as hooks";
      description = "run all executables in a directory with the same\narguments and environment and collect the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }