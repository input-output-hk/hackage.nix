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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "spreadsheet"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Spreadsheet";
      url = "";
      synopsis = "Read and write spreadsheets from and to CSV files in a lazy way";
      description = "Read and write spreadsheets from and to CSV files in a lazy way.\nSee also the csv package on Hackage and\n<http://www.xoltar.org/languages/haskell.html>,\n<http://www.xoltar.org/languages/haskell/CSV.hs>.\nBoth do not parse lazy.\nReading from other source than plain 'String's could be easily added.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }