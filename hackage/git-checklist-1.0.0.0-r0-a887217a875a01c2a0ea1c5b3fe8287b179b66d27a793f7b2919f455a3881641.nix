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
      identifier = { name = "git-checklist"; version = "1.0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dougal@dougalstanton.net";
      author = "Dougal Stanton";
      homepage = "https://github.com/dougalstanton/git-checklist";
      url = "";
      synopsis = "Maintain per-branch checklists in Git";
      description = "Manage lists of TODO items for private branches\nfrom the command line. No configuration required\nand fast to learn, with human-editable storage\nformat and comprehensive help information.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-checklist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
    };
  }