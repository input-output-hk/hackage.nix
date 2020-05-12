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
      identifier = { name = "git-embed"; version = "0.1.0"; };
      license = "BSD-2-Clause";
      copyright = "2014 Emanuel Borsboom";
      maintainer = "Emanuel Borsboom <emanuel@borsboom.io>";
      author = "Emanuel Borsboom <emanuel@borsboom.io>";
      homepage = "https://github.com/borsboom/git-embed";
      url = "";
      synopsis = "Use TH to embed Git repo information.";
      description = "Use Template Haskell to embed Git revision, branch, and\ntag information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }