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
      identifier = { name = "DSH"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "giorgidze@gmail.com, jeroen.weijers@uni-tuebingen.de";
      author = "George Giorgidze, Tom Schreiber, Nils Schweinsberg and Jeroen Weijers";
      homepage = "";
      url = "";
      synopsis = "Database Supported Haskell";
      description = "This is a Haskell library for database-supported program execution. Using\nthis library a relational database management system (RDBMS) can be used as\na coprocessor for the Haskell programming language, especially for those\nprogram fragments that carry out data-intensive and data-parallel\ncomputation.\n\nDatabase executable program fragments can be written using the list\ncomprehension notation (with modest syntax changes due to quasiquoting) and\nlist processing combinators from the Haskell list prelude. Note that rather\nthan embedding a relational language into Haskell, we turn idiomatic Haskell\nprograms into SQL queries.\n\nDSH faithfully represents list order and nesting, and compiles the list\nprocessing combinators into relational queries. The implementation avoids\nunnecessary data transfer and context switching between the database\ncoprocessor and the Haskell runtime by ensuring that the number of generated\nrelational queries is only determined by the program fragment's type and not\nby the database size.\n\nDSH can be used to allow existing Haskell programs to operate on large scale\ndata (e.g., larger than the available heap) or query existing database\nresident data with Haskell.\n\nNote that this package is flagged experimental and therefore not suited for\nproduction use. This is a proof of concept implementation only. To learn\nmore about DSH, our paper entitled as \"Haskell boards the Ferry:\nDatabase-supported program execution for Haskell\" [1] is a recommended\nreading. The package includes a couple of examples that demonstrate how to\nuse DSH.\n\n1. <http://www-db.informatik.uni-tuebingen.de/files/publications/ferryhaskell.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."csv" or (buildDepError "csv"))
          (hsPkgs."Pathfinder" or (buildDepError "Pathfinder"))
          (hsPkgs."FerryCore" or (buildDepError "FerryCore"))
          ];
        };
      };
    }