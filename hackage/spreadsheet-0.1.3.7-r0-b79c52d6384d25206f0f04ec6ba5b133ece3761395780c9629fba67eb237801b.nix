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
    flags = { buildexamples = false; splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "spreadsheet"; version = "0.1.3.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Spreadsheet";
      url = "";
      synopsis = "Read and write spreadsheets from and to CSV files in a lazy way";
      description = "Read and write spreadsheets from and to files\ncontaining comma separated values (CSV) in a lazy way.\nReading from other source than plain 'String's could be easily added.\n\nIf you install this package by\n\n> cabal install -fbuildExamples\n\nthen the example programs @csvreplace@ and @csvextract@\nare compiled and installed, too.\nThe program @csvreplace@ fills a template text using data from a CSV file.\nFor similar (non-Haskell) programs see @cut@, @csvfix@, @csvtool@.\nThe program @csvextract@ is the inverse of @csvreplace@.\n\nRelated packages:\n\n* @csv@: strict parser\n\n* <http://www.xoltar.org/languages/haskell.html>,\n<http://www.xoltar.org/languages/haskell/CSV.hs>: strict parser\n\n* @lazy-csv@: lazy @String@ and @ByteString@ parser\n\n* @cassava@: high-level CSV parser that treats rows as records,\nparses ByteStrings and is biased towards UTF-8 encoding.";
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
      exes = {
        "csvreplace" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."spreadsheet" or (errorHandler.buildDepError "spreadsheet"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "csvextract" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."spreadsheet" or (errorHandler.buildDepError "spreadsheet"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }