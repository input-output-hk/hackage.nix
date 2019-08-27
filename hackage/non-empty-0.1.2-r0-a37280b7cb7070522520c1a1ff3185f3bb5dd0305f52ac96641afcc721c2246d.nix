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
      specVersion = "1.6";
      identifier = { name = "non-empty"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/non-empty/";
      url = "";
      synopsis = "List-like structures with static restrictions on the number of elements";
      description = "We provide the data type @NonEmpty@ that allows to store a list-like structure\nwith at least or exactly @n@ elements,\nwhere @n@ is fixed in the type in a kind of Peano encoding\nand is usually small.\nThe datatype is intended to increase safety\nby making functions total that are partial on plain lists.\nE.g. on a non-empty list, 'head' and 'tail' are always defined.\n\nThere are more such data types like @Optional@ and @Empty@.\nTogether with @NonEmpty@ you can define a list type\nfor every finite set of admissible list lengths.\n\nThe datatype can be combined with Lists, Sequences and Sets\n(from the @containers@ package).\n\nThe package needs only Haskell 98.\n\nSimilar packages:\n\n* @semigroups@, @semigroupoids@:\nrestricted to lists, minimum number of elements: 1,\nprovides more type classes tailored to the use of non-empty lists.\n\n* @NonEmptyList@:\nrestricted to lists, minimum number of elements: 1\n\n* @NonEmpty@:\nrestricted to lists, minimum number of elements: 1,\ndesigned for unqualified use of identifiers\n\n* @Cardinality@:@NeverEmptyList@\n\n* <http://www.haskell.org/haskellwiki/Non-empty_list>\n\nRelated packages:\n\n* @Stream@:\nLists that contain always infinitely many elements.\n\n* @fixed-list@:\nUses the same data structure as this package\nbut is intended for fixing the number of elements in a list.\nRequires multi-parameter type classes with functional dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }