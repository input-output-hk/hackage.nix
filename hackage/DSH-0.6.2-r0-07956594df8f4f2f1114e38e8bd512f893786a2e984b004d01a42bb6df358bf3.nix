{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "DSH"; version = "0.6.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."syntax-trees" or ((hsPkgs.pkgs-errors).buildDepError "syntax-trees"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
          (hsPkgs."Pathfinder" or ((hsPkgs.pkgs-errors).buildDepError "Pathfinder"))
          (hsPkgs."FerryCore" or ((hsPkgs.pkgs-errors).buildDepError "FerryCore"))
          ];
        buildable = true;
        };
      };
    }