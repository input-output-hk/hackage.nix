{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HaskRel";
        version = "0.1.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "Thor Michael Støre 2015";
      maintainer = "thormichael@gmail.com";
      author = "Thor Michael Støre";
      homepage = "";
      url = "";
      synopsis = "HaskRel, Haskell as a DBMS with support for the relational\nalgebra";
      description = "HaskRel aims to define those elements of the relational theory of database\nmanagement that Haskell can accommodate, thus enabling Haskell (or more\nprecisely GHC) in its own right as a DBMS with first-class support for those\nparts of the relational model. It does not qualify as a proper RDBMS since it\nas-is only defines the relational algebra, relational variables and relational\nassignment. It does not define the relational calculus, views, constraints and\ntransactions (beyond the fundamental requirement that the tuples of relations\nare to be unique), certain operators like relation valued aggregate operators,\nnor a few minor or even deprecated operators such as DIVIDE. The implemented\nparts are decently complete even if there are major implementation\nshortcomings that prevent this from being practically usable as an actual\nDBMS.\n\nI refer to it as \"/first-class/\" since the types of the relational model are\nfirst-class types to Haskell, and the Haskell type system is able to induce\nthe type resulting of relational expressions (for instance that a natural join\nof two relations results in a relation with a heading that is the setwise\nunion of the headings of the original relations).\n\n= Examples\n\nThe examples in this documentation are based on \"the old warhorse\" that is the\nsuppliers-parts database (see [1] for more). This gives a body of relational\nexpressions with known results to base examples upon. See also\nexamples\\/SuppliersPartsExamples.hs (not visible from this documentation) for\nHaskell versions of a selection of the Tutorial D expressions given as\nexamples in chapters 6 and 7 of [1]. These can be run by starting\nexamples\\/suppliersPartsDB.sh and then running @snrt2ndExamples@. While most\nTutorial D expressions translate fairly verbatim to Haskell there are a few\nwhere one must be a bit more explicit. While most Tutorial D expressions\ntranslate fairly verbatim to Haskell there are a few where Haskell is stricter\nthan Tutorial D and one must be a bit more explicit.\n\n\$ is always used after `p`\\/`rPrint` or `pt`\\/`rPrintTyped` in the examples to\nkeep them uniform (and so it kinda looks like a prompt), even when not\nrequired. The short forms `p` and `pt` are used whenever there isn't a\nconflict with other identifiers, whereas for the SuppliersPartsExample, which\nhas a relvar \"@p@\", `rPrint` is used instead of `p` for presentation of\nrelational objects without type information.\n\n= Terminology\n\nSince this builds on both Haskell and relational theory this documentation\nuses terms as they have been established in material related to\neither. Several terms of Haskell and HList have been redefined in terms of\nrelational theory in this library, mostly to illustrate how terms and concepts\nhave been mapped from the latter to the former. (I'm trying to keep this open\nto change later if it turns out to be an unhelpful crutch.)\n\nThe following table gives a quick overview of either terms or concepts as\nfound in Haskell, the relational model (as presented in [1]), HaskRel and SQL,\nand how they are mapped from the second to the first:\n\n@\n┌───────────────────────────┬────────────────────┬────────────┬────────────────────────────────────────────────┐\n│ haskell                   │ relModel           │ haskRel    │ sql                                            │\n╞═══════════════════════════╪════════════════════╪════════════╪════════════════════════════════════════════════╡\n│ <https://hackage.haskell.org/package/tagged/docs/Data-Tagged.html Data.Tagged.Tagged>        │ attribute          │ Attr       │ field, column                                  │\n│ <https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html Data.HList.Record.Record>  │ tuple              │ RTuple     │ row                                            │\n│ ( <https://hackage.haskell.org/package/containers/docs/Data-Set.html Set> (<https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html Record> a) )        │ relation           │ Relation a │ table                                          │\n│ <https://hackage.haskell.org/package/filepath/docs/System-FilePath.html FilePath> (<https://hackage.haskell.org/package/containers/docs/Data-Set.html Set> (<https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html Record> a)) │ relvar             │ Relvar a   │ table                                          │\n│ <https://hackage.haskell.org/package/HList/docs/Data-HList-FakePrelude.html#t:Label Data.HList.Record.Label>   │ attribute name     │ Label      │ field name, column name                        │\n│ <https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html#t:Labels Data.HList.Record.Labels>  │ attribute name set │ Labels     │ list of field/column names                     │\n│ function, operator        │ operator           │ function   │ operator, function, procedure, routine, method │\n└───────────────────────────┴────────────────────┴────────────┴────────────────────────────────────────────────┘\n@\n\nFound in \"example\\/Terminology.hs\". Note that this is just an overview, study\nof [1] or [2], Haskell itself, HList and HaskRel is required to see how terms\nand concepts correlate.\n\nThe term \\\"RTuple\\\", or \"r-tuple\", is chosen to simultaneously distinguish the\nconcept from Haskell tuples while relating it to tuples of the relational\nmodel. For the type of either \"Record a\" or \"Set ( Record a )\" in Haskell the\nterm \"heading\" is used in relational theory, and \"row type\" or \"composite\ntype\" in SQL. In relational theory the term \"scalar\" is used to refer to data\ntypes that are neither tuples nor relations, which corresponds to everything\nbut \"Record a\" or \"Set ( Record a )\" in Haskell. Note also that HaskRel /does/\nuse the term \"table\", but then only in the sense of \"presentation of a\nrelation value\" (see above).\n\n== The HaskRel library\n\nNot all modules of this library are relevant to gain an understanding of how\nit functions, the next part to go to at this point is\n\"Database.HaskRel.RDBMS\", and the modules it reexports.\n\n[1] <http://shop.oreilly.com/product/0636920022879.do SQL and Relational Theory, 2nd ed. (2011), C.J. Date>\n[2] <http://www.dcs.warwick.ac.uk/~hugh/TTM/TTM-2013-02-07.pdf The Third Manifesto, C. J. Date and Hugh Darwen, February 7th, 2013>";
      buildType = "Simple";
    };
    components = {
      "HaskRel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HList)
          (hsPkgs.containers)
          (hsPkgs.tagged)
          (hsPkgs.directory)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }