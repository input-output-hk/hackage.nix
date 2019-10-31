let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { xlsx = true; };
    package = {
      specVersion = "1.8.0.2";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ideas" or (buildDepError "ideas"))
          (hsPkgs."ideas-math-types" or (buildDepError "ideas-math-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          ] ++ (pkgs.lib).optionals (flags.xlsx) [
          (hsPkgs."xlsx" or (buildDepError "xlsx"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "advise-me.cgi" = {
          depends = [
            (hsPkgs."Advise-me" or (buildDepError "Advise-me"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ideas" or (buildDepError "ideas"))
            (hsPkgs."ideas-math-types" or (buildDepError "ideas-math-types"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "advise-me-admin.cgi" = {
          depends = [
            (hsPkgs."Advise-me" or (buildDepError "Advise-me"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ideas" or (buildDepError "ideas"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          buildable = true;
          };
        "database-builder.exe" = {
          depends = [
            (hsPkgs."Advise-me" or (buildDepError "Advise-me"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ideas" or (buildDepError "ideas"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "report.exe" = {
          depends = [
            (hsPkgs."Advise-me" or (buildDepError "Advise-me"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.xlsx then true else false;
          };
        };
      };
    }