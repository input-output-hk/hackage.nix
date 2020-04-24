{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."editline" or ((hsPkgs.pkgs-errors).buildDepError "editline"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            ];
          buildable = true;
          };
        };
      };
    }