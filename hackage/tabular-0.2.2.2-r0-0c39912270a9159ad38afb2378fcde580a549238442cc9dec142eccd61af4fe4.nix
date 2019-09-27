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
      specVersion = "0";
      identifier = { name = "tabular"; version = "0.2.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <E.Y.Kow@brighton.ac.uk>";
      author = "Eric Kow";
      homepage = "http://patch-tag.com/r/kowey/tabular";
      url = "";
      synopsis = "Two-dimensional data tables with rendering functions";
      description = "Tabular provides a Haskell representation of two-dimensional\ndata tables, the kind that you might find in a spreadsheet or\nor a research report.  It also comes with some default\nrendering functions for turning those tables into ASCII art,\nsimple text with an arbitrary delimiter, CSV, HTML or LaTeX.\n\nBelow is an example of the kind of output this library produces.\nThe tabular package can group rows and columns, each group\nhaving one of three separators (no line, single line, double line)\nbetween its members.\n\n>     || memtest 1 | memtest 2 ||  time test  | time test 2\n> ====++===========+===========++=============+============\n> A 1 ||       hog |  terrible ||        slow |      slower\n> A 2 ||       pig |   not bad ||        fast |     slowest\n> ----++-----------+-----------++-------------+------------\n> B 1 ||      good |     awful || intolerable |    bearable\n> B 2 ||    better | no chance ||    crawling |     amazing\n> B 3 ||       meh |   well... ||  worst ever |          ok";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."csv" or (buildDepError "csv"))
          (hsPkgs."html" or (buildDepError "html"))
          ];
        buildable = true;
        };
      };
    }