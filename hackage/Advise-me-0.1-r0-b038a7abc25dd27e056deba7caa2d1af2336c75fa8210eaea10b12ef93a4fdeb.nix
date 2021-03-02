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
    flags = { xlsx = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "Advise-me"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "(c) 2019";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Jorn van Wijk, Ferdinand van Walree, Niels Steenbergen, Wink van Zon, Bastiaan Heeren";
      homepage = "http://advise-me.ou.nl/";
      url = "";
      synopsis = "Assessment services for the Advise-Me project";
      description = "The Advise-Me project (Automatic Diagnostics with Intermediate Steps in\nMathematics Education) is a Strategic Partnership in EU’s Erasmus+ programme.\nIn this project we develop innovative technology for calculating detailed\ndiagnostics in mathematics education, for domains such as ‘Numbers’ and\n‘Relationships’. The technology is offered as an open, reusable set of\nfeedback and assessment services. The diagnostic information is calculated\nautomatically based on the analysis of intermediate steps. For more\ninformation, see the project website or read the EC-TEL 2018 paper\n'Fine-grained Cognitive Assessment based on Free-form Input for Math Story\nProblems'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ideas" or (errorHandler.buildDepError "ideas"))
          (hsPkgs."ideas-math-types" or (errorHandler.buildDepError "ideas-math-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ] ++ (pkgs.lib).optionals (flags.xlsx) [
          (hsPkgs."xlsx" or (errorHandler.buildDepError "xlsx"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "advise-me.cgi" = {
          depends = [
            (hsPkgs."Advise-me" or (errorHandler.buildDepError "Advise-me"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ideas" or (errorHandler.buildDepError "ideas"))
            (hsPkgs."ideas-math-types" or (errorHandler.buildDepError "ideas-math-types"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "advise-me-admin.cgi" = {
          depends = [
            (hsPkgs."Advise-me" or (errorHandler.buildDepError "Advise-me"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ideas" or (errorHandler.buildDepError "ideas"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ];
          buildable = true;
          };
        "database-builder.exe" = {
          depends = [
            (hsPkgs."Advise-me" or (errorHandler.buildDepError "Advise-me"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ideas" or (errorHandler.buildDepError "ideas"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "report.exe" = {
          depends = [
            (hsPkgs."Advise-me" or (errorHandler.buildDepError "Advise-me"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.xlsx then true else false;
          };
        };
      };
    }