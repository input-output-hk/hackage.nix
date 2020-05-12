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
    flags = { llvm = false; threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "squeeze"; version = "1.0.4.4"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "squeeze <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A file-packing application.";
      description = "Returns progressively better subsets of the specified files, selected to fit into a limited space, without wasting more than the specific ratio.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "squeeze" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }