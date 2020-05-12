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
      identifier = { name = "DisTract"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman";
      maintainer = "Matthew Sackman <matthew@wellquite.org>";
      author = "Matthew Sackman";
      homepage = "http://distract.wellquite.org/";
      url = "";
      synopsis = "Distributed Bug Tracking System";
      description = "A distributed bug tracker layered on top of Monotone.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."chunks" or (errorHandler.buildDepError "chunks"))
          (hsPkgs."hinstaller" or (errorHandler.buildDepError "hinstaller"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "DisTractNewBug" = { buildable = true; };
        "DisTractModifyBug" = { buildable = true; };
        "DisTractUpdateFormatAllBugs" = { buildable = true; };
        "DisTractUpdateFormatBug" = { buildable = true; };
        "DisTractFormatNew" = { buildable = true; };
        "DisTractSortBugs" = { buildable = true; };
        "DisTractInstaller" = { buildable = true; };
        };
      };
    }