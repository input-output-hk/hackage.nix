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
    flags = { prod = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "prompt-hs"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "notquiteamonad";
      author = "notquiteamonad";
      homepage = "https://github.com/notquiteamonad/prompt-hs";
      url = "";
      synopsis = "A user-friendly, dependently-typed library for asking your users questions";
      description = "A library making use of the terminal package to prompt users for answers in a CLI context.\n\nSupports freeform text as well as choices between sum type constructors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."terminal" or (errorHandler.buildDepError "terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }