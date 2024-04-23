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
    flags = { dev = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "codemonitor"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rickard Lindberg <ricli85@gmail.com>";
      author = "Rickard Lindberg <ricli85@gmail.com>";
      homepage = "http://github.com/rickardlindberg/codemonitor";
      url = "";
      synopsis = "Tool that automatically runs arbitrary commands when files change on disk.";
      description = "Tool that automatically runs arbitrary commands when files change on disk.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "codemonitor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }