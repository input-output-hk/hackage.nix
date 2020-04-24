{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "unbeliever"; version = "0.10.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/unbeliever#readme";
      url = "";
      synopsis = "Opinionated Haskell Interoperability";
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons. Its @Program@ type provides unified ouptut &\nlogging, command-line option parsing, exception handling, and a place to\nput top-level application state. There's also an underlying @Rope@ text\ntype built on a finger tree of UTF-8 fragments along with conveniences\nfor pretty printing and colourizing terminal output.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.\n\nUseful starting points in the documentation are\n<../core-program/docs/Core-Program-Execute.html Core.Program.Execute> and\n<../core-text/docs/Core-Text-Rope.html Core.Text.Rope>.\n\nAn ancillary purpose of this library is to facilitate interoperability\nbetween different package families and ecosystems. Having a single\nbatteries-included package (as was originally the case) made using it\neasier, but the resulting dependency footprint was considerable and\ngrowing. The code is thus now spread across several packages:\n\n* __core-text__\n* __core-data__\n* __core-program__\n\nwith more forthcoming as we continue to add convenince and\ninteroperability wrappers around streaming, webservers, and database\naccess patterns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."core-data" or ((hsPkgs.pkgs-errors).buildDepError "core-data"))
          (hsPkgs."core-program" or ((hsPkgs.pkgs-errors).buildDepError "core-program"))
          (hsPkgs."core-text" or ((hsPkgs.pkgs-errors).buildDepError "core-text"))
          ];
        buildable = true;
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."core-data" or ((hsPkgs.pkgs-errors).buildDepError "core-data"))
            (hsPkgs."core-program" or ((hsPkgs.pkgs-errors).buildDepError "core-program"))
            (hsPkgs."core-text" or ((hsPkgs.pkgs-errors).buildDepError "core-text"))
            (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "performance" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."core-data" or ((hsPkgs.pkgs-errors).buildDepError "core-data"))
            (hsPkgs."core-program" or ((hsPkgs.pkgs-errors).buildDepError "core-program"))
            (hsPkgs."core-text" or ((hsPkgs.pkgs-errors).buildDepError "core-text"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }