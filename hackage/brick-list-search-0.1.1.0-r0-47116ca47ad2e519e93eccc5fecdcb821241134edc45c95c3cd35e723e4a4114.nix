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
    flags = { demos = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "brick-list-search"; version = "0.1.1.0"; };
      license = "0BSD";
      copyright = "";
      maintainer = "amano.kenji@proton.me";
      author = "amano.kenji";
      homepage = "https://codeberg.org/amano.kenji/brick-list-search";
      url = "";
      synopsis = "Search forward or backward for certain kinds of items in brick list";
      description = "This package contains functions that can be used in brick event handlers to search forward or backward for certain\nkinds of items.\n\nFor example, you can search forward or backward for a list element that is not a separator because selecting a list\nseparator doesn't make sense.\n\nYou can run demo programs to see how it works.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "brick-list-search" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."brick-list-search" or (errorHandler.buildDepError "brick-list-search"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
    };
  }