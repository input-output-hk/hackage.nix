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
      identifier = { name = "EditTimeReport"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bart Spaans <bart.spaans@gmail.com>";
      author = "Bart Spaans";
      homepage = "http://github.com/bspaans/EditTimeReport";
      url = "";
      synopsis = "Query language and report generator for edit logs.";
      description = "This program can be used to see exactly how much time\nyou spent working on file X, project Y or language Z.\nIt can also be used to see for instance what your most\nproductive time of the year, month or week is.\nIn the long-run, this might help you make better time\nestimates, while also providing you with an overview\nof what you have worked on (which can also be nice for CV's).\nIn short; this program allows you to query your logs\nand generate reports in plain text, html, xhtml and CSV.\nSupport for more output formats is planned for the future.\nSee the github page for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "report" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."editline" or (errorHandler.buildDepError "editline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            ];
          buildable = true;
          };
        };
      };
    }