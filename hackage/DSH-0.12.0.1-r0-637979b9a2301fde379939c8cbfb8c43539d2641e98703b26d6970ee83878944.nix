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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."kure" or (errorHandler.buildDepError "kure"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."algebra-dag" or (errorHandler.buildDepError "algebra-dag"))
          ];
        buildable = true;
        };
      exes = {
        "vldot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."algebra-dag" or (errorHandler.buildDepError "algebra-dag"))
            ];
          buildable = true;
          };
        };
      };
    }