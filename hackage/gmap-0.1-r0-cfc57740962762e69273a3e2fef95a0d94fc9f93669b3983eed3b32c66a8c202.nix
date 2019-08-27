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
      specVersion = "0";
      identifier = { name = "gmap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamiiecb (google mail)";
      author = "Jamie Brandon, Adrian Hey";
      homepage = "";
      url = "";
      synopsis = "Composable maps and generic tries.";
      description = "Provides typeclass for and several implementations of composable maps and generic tries.\nOrdMap is roughly equivalent to Data.Map .\nListMap, EitherMap, MaybeMap, TupleMap and EnumMap allow you to break down the corresponding types.\nInjectKeys is the easiest way to define tries on your own types, see EitherMap for a simple example.\nChoiceMap and TupleMap correspond to sum and product types, respectively.\nThe type-level syntax for creating maps is currently unwieldy. This will improve significantly in the next version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."COrdering" or (buildDepError "COrdering"))
          (hsPkgs."AvlTree" or (buildDepError "AvlTree"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      };
    }