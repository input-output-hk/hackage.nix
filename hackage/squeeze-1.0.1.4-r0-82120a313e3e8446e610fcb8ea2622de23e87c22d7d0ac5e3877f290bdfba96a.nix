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
    flags = { threaded = true; llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "squeeze"; version = "1.0.1.4"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
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
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ] ++ [
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        };
      };
    }