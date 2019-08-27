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
      identifier = { name = "ComonadSheet"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2013-2014 Kenneth W. Foner";
      maintainer = "kenneth.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "https://github.com/kwf/ComonadSheet";
      url = "";
      synopsis = "A library for expressing spreadsheet-like computations as the fixed-points of comonads.";
      description = "@ComonadSheet@ is a library for expressing spreadsheet-like computations with absolute and relative references, using fixed-points of n-dimensional comonads. For examples of use, see the <https://github.com/kwf/ComonadSheet GitHub page> for the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."applicative-numbers" or (buildDepError "applicative-numbers"))
          (hsPkgs."Stream" or (buildDepError "Stream"))
          (hsPkgs."NestedFunctor" or (buildDepError "NestedFunctor"))
          (hsPkgs."PeanoWitnesses" or (buildDepError "PeanoWitnesses"))
          (hsPkgs."IndexedList" or (buildDepError "IndexedList"))
          (hsPkgs."Tape" or (buildDepError "Tape"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      };
    }