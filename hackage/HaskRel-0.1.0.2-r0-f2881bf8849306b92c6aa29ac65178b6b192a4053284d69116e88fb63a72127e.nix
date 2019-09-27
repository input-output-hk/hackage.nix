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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HList" or (buildDepError "HList"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }