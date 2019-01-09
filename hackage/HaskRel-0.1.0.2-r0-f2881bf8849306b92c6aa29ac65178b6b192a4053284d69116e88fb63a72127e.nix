{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HaskRel"; version = "0.1.0.2"; };
      license = "GPL-2.0-only";
      copyright = "Thor Michael Støre 2015";
      maintainer = "thormichael@gmail.com";
      author = "Thor Michael Støre";
      homepage = "";
      url = "";
      synopsis = "HaskRel, Haskell as a DBMS with support for the relational\nalgebra";
      description = "HaskRel aims to define those elements of the relational theory of database\nmanagement that Haskell can accommodate, thus enabling Haskell (or more\nprecisely GHC) in its own right as a DBMS with first-class support for those\nparts of the relational model. It does not qualify as a proper RDBMS since it\nas-is only defines the relational algebra, relational variables and relational\nassignment. It does not define the relational calculus, views, constraints and\ntransactions (beyond the fundamental requirement that the tuples of relations\nare to be unique), certain operators like relation valued aggregate operators,\nnor a few minor or even deprecated operators such as DIVIDE. The implemented\nparts are decently complete even if there are major implementation\nshortcomings that prevent this from being practically usable as an actual\nDBMS.\n\nI refer to it as \"/first-class/\" since the types of the relational model are\nfirst-class types to Haskell, and the Haskell type system is able to induce\nthe type resulting of relational expressions (for instance that a natural join\nof two relations results in a relation with a heading that is the setwise\nunion of the headings of the original relations).\n\n== The HaskRel library\n\nNot all modules of this library are relevant to gain an understanding of how\nit functions, the next part to go to at this point is\n\"Database.HaskRel.RDBMS\", and the modules it reexports. See also README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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