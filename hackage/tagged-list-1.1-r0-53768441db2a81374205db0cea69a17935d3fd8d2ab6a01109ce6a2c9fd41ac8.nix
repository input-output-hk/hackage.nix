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
      identifier = { name = "tagged-list"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "Lists tagged with a type-level natural number representing their length.";
      description = "This package contains a datatype, 'TaggedList', that provides a fixed-length list\ntagged with a phantom type-level natural number that corresponds to the length of\nthe list.  It also contains some basic operations on these lists, as well as a\ntypeclass for converting tagged lists to and from tuples.\n\nNew in version 1.1:  added function castTag, improved error reporting in fromList,\nand fixed compiler error with GHC 7.0.*";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."AbortT-transformers" or (buildDepError "AbortT-transformers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."natural-number" or (buildDepError "natural-number"))
          (hsPkgs."type-equality" or (buildDepError "type-equality"))
          (hsPkgs."type-level-natural-number" or (buildDepError "type-level-natural-number"))
          (hsPkgs."type-level-natural-number-induction" or (buildDepError "type-level-natural-number-induction"))
          (hsPkgs."type-level-natural-number-operations" or (buildDepError "type-level-natural-number-operations"))
          ];
        };
      };
    }