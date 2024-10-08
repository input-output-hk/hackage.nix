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
      identifier = { name = "rapid"; version = "0.1.0"; };
      license = "LicenseRef-Apache";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "http://hub.darcs.net/esz/rapid";
      url = "";
      synopsis = "GHCi background threads, hot reloading and reload-surviving values";
      description = "This package provides a safe and convenient wrapper around\n<https://hackage.haskell.org/package/foreign-store foreign-store>\nfor hot-reloadable background threads during a GHCi session, useful\nfor the development of long-running programs like servers, web\napplications and interactive user interfaces.\n\nIt can also be used in the context of batch-style programs to keep\nresources that are expensive to create in memory instead of having\nto recreate them after every module reload.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foreign-store" or (errorHandler.buildDepError "foreign-store"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }