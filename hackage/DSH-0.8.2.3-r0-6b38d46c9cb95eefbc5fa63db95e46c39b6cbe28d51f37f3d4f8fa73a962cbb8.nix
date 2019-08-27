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
      specVersion = "1.4";
      identifier = { name = "DSH"; version = "0.8.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "giorgidze@gmail.com, jeroen.weijers@uni-tuebingen.de";
      author = "George Giorgidze, Alexander Ulrich, Tom Schreiber, Nils Schweinsberg and Jeroen Weijers";
      homepage = "";
      url = "";
      synopsis = "Database Supported Haskell";
      description = "This is a Haskell library for database-supported program execution. Using\nthis library a relational database management system (RDBMS) can be used as\na coprocessor for the Haskell programming language, especially for those\nprogram fragments that carry out data-intensive and data-parallel\ncomputations.\n\nDatabase executable program fragments can be written using the monad\ncomprehension notation [2] and list processing combinators from the Haskell\nlist prelude. Note that rather than embedding a relational language into\nHaskell, we turn idiomatic Haskell programs into SQL queries.\n\nDSH faithfully represents list order and nesting, and compiles the list\nprocessing combinators into relational queries. The implementation avoids\nunnecessary data transfer and context switching between the database\ncoprocessor and the Haskell runtime by ensuring that the number of generated\nrelational queries is only determined by the program fragment's type and not\nby the database size.\n\nDSH can be used to allow existing Haskell programs to operate on large scale\ndata (e.g., larger than the available heap) or query existing database\nresident data with Haskell.\n\nNote that this package is flagged experimental and therefore is not suited\nfor production use. This is a proof of concept implementation only. To learn\nmore about DSH, our paper entitled as \"Haskell Boards the Ferry: Database-\nSupported Program Execution for Haskell\" [1] is a recommended reading. The\npackage includes a couple of examples that demonstrate how to use DSH.\n\nThe latest release implements new features described in our work-in-progress\npaper entitled as \"Algebraic Data Types for Language-Integrated\nQueries\" [3].\n\n1. <http://db.inf.uni-tuebingen.de/files/giorgidze/ifl2010.pdf>\n\n2. <http://db.inf.uni-tuebingen.de/files/giorgidze/haskell2011.pdf>\n\n3. <http://db.inf.uni-tuebingen.de/files/giorgidze/adtq.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."csv" or (buildDepError "csv"))
          (hsPkgs."Pathfinder" or (buildDepError "Pathfinder"))
          (hsPkgs."FerryCore" or (buildDepError "FerryCore"))
          ];
        };
      };
    }