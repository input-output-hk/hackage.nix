{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debugcomp = false; debuggraph = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "DSH"; version = "0.12.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@etc-network.de";
      author = "Alexander Ulrich, George Giorgidze, Jeroen Weijers, Nils Schweinsberg";
      homepage = "";
      url = "";
      synopsis = "Database Supported Haskell";
      description = "This is a Haskell library for database-supported program\nexecution. Using DSH, a relational database management\nsystem (RDBMS) can be used as a coprocessor for the Haskell\nprogramming language, especially for those program fragments that\ncarry out data-intensive and data-parallel computations.\n\nDatabase executable program fragments can be written using the monad\ncomprehension notation [2] and list processing combinators from the\nHaskell list prelude. Note that rather than embedding a relational\nlanguage into Haskell, we turn idiomatic Haskell programs into SQL\nqueries.\n\nDSH faithfully represents list order and nesting, and compiles the\nlist processing combinators into relational queries. The\nimplementation avoids unnecessary data transfer and context\nswitching between the database coprocessor and the Haskell runtime\nby ensuring that the number of generated relational queries is only\ndetermined by the program fragment's type and not by the database\nsize.\n\nDSH can be used to allow existing Haskell programs to operate on\nlarge scale data (e.g., larger than the available heap) or query\nexisting database resident data with Haskell.\n\nNote that this package is flagged experimental and therefore is not\nsuited for production use (we mean it!). This is a proof of concept\nimplementation only. To learn more about DSH, our paper \"The\nFlatter, the Better — Query Compilation Based on the Flattening\nTransformation.\" [1] is a recommended reading. The package includes\na couple of examples that demonstrate how to use DSH.\n\nThe current release does not rely anymore on the loop-lifting\ncompilation technique and the Pathfinder optimizer. Instead, it\nbrings a completely rewritten query compiler based on Guy Blelloch's\nflattening transformation. This approach leads to a more robust\ncompilation and produces more efficient query code.\n\nTo generate actual code for a relational backend, an additional\nbackend package needs to be installed. Currently, the package\n'dsh-sql' on Hackage provides SQL code generation for PostgreSQL.\n\nPlease read the release notes in 'README.md'.\n\n1. <http://db.inf.uni-tuebingen.de/publications/TheFlatter-theBetter-QueryCompilationBasedontheFlatteningTransformation.html>\n\n2. <http://db.inf.uni-tuebingen.de/staticfiles/publications/haskell2011.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."kure" or ((hsPkgs.pkgs-errors).buildDepError "kure"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."Decimal" or ((hsPkgs.pkgs-errors).buildDepError "Decimal"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."algebra-dag" or ((hsPkgs.pkgs-errors).buildDepError "algebra-dag"))
          ];
        buildable = true;
        };
      exes = {
        "vldot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Decimal" or ((hsPkgs.pkgs-errors).buildDepError "Decimal"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."algebra-dag" or ((hsPkgs.pkgs-errors).buildDepError "algebra-dag"))
            ];
          buildable = true;
          };
        };
      };
    }