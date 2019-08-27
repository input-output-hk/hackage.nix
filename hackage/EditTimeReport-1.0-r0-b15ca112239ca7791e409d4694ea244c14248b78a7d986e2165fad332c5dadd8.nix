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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."editline" or (buildDepError "editline"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."csv" or (buildDepError "csv"))
            ];
          };
        };
      };
    }