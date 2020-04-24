{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debugcomp = false; debuggraph = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "DSH"; version = "0.10.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@etc-network.de";
      author = "George Giorgidze, Alexander Ulrich, Nils Schweinsberg and Jeroen Weijers";
      homepage = "";
      url = "";
      synopsis = "Database Supported Haskell";
      description = "This is a Haskell library for database-supported program execution. Using\nthis library a relational database management system (RDBMS) can be used as\na coprocessor for the Haskell programming language, especially for those\nprogram fragments that carry out data-intensive and data-parallel\ncomputations.\n\nDatabase executable program fragments can be written using the monad\ncomprehension notation [2] and list processing combinators from the Haskell\nlist prelude. Note that rather than embedding a relational language into\nHaskell, we turn idiomatic Haskell programs into SQL queries.\n\nDSH faithfully represents list order and nesting, and compiles the list\nprocessing combinators into relational queries. The implementation avoids\nunnecessary data transfer and context switching between the database\ncoprocessor and the Haskell runtime by ensuring that the number of generated\nrelational queries is only determined by the program fragment's type and not\nby the database size.\n\nDSH can be used to allow existing Haskell programs to operate on large scale\ndata (e.g., larger than the available heap) or query existing database\nresident data with Haskell.\n\nNote that this package is flagged experimental and therefore is not suited\nfor production use (we mean it!). This is a proof of concept implementation\nonly. To learn more about DSH, our paper entitled as \"Haskell Boards the Ferry:\nDatabase-Supported Program Execution for Haskell\" [1] is a recommended reading.\nThe package includes a couple of examples that demonstrate how to use DSH.\n\nIn contrast to the DSH version described in [1], the current release does\nnot rely anymore on the loop-lifting compilation technique together with\nthe Pathfinder optimizer. Instead, it brings a completely rewritten query\ncompiler based on Guy Blelloch's flattening transformation. This approach\nleads to a more robust compilation and produces more efficient query code.\n\nPlease read the release notes in 'README.md'.\n\n1. <http://db.inf.uni-tuebingen.de/staticfiles/publications/ferryhaskell.pdf>\n\n2. <http://db.inf.uni-tuebingen.de/staticfiles/publications/haskell2011.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."kure" or ((hsPkgs.pkgs-errors).buildDepError "kure"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."set-monad" or ((hsPkgs.pkgs-errors).buildDepError "set-monad"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."algebra-dag" or ((hsPkgs.pkgs-errors).buildDepError "algebra-dag"))
          (hsPkgs."algebra-sql" or ((hsPkgs.pkgs-errors).buildDepError "algebra-sql"))
          ];
        buildable = true;
        };
      exes = {
        "vldot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."algebra-dag" or ((hsPkgs.pkgs-errors).buildDepError "algebra-dag"))
            (hsPkgs."algebra-sql" or ((hsPkgs.pkgs-errors).buildDepError "algebra-sql"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Flattening_TA" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."DSH" or ((hsPkgs.pkgs-errors).buildDepError "DSH"))
            ];
          buildable = true;
          };
        };
      };
    }