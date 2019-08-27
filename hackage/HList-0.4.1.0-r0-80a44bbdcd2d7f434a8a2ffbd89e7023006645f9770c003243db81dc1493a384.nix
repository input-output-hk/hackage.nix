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
    flags = { new_type_eq = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "HList"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "oleg@pobox.com";
      author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (London)";
      homepage = "";
      url = "";
      synopsis = "Heterogeneous lists";
      description = "HList provides many operations to create and manipulate\nheterogenous lists (HLists) whose length and element\ntypes are known at compile-time. HLists are used to implement\n\n* records\n* variants\n* type-indexed products (TIP)\n* type-indexed co-products (TIC)\n* keyword arguments\n\nUser code should import \"Data.HList\" or\n\"Data.HList.CommonMain\" for a slightly more limited scope";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."array" or (buildDepError "array"))
          ] ++ (pkgs.lib).optional (flags.new_type_eq) (hsPkgs."base" or (buildDepError "base"));
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."HList" or (buildDepError "HList"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HList" or (buildDepError "HList"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ];
          };
        };
      };
    }