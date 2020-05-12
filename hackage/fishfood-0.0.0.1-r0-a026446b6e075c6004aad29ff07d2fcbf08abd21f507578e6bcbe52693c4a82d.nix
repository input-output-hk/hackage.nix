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
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "fishfood"; version = "0.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2013 Dr. Alistair Ward";
      maintainer = "fishfood <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Finds the file-size frequency-distribution for the referenced files.";
      description = "Counts the number of files in a set of bins, each of which holds only those files which fall within a specific size-interval.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fishfood" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }