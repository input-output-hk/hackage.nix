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
      identifier = { name = "persistable-record"; version = "0.6.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2017 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Binding between SQL database values and haskell records.";
      description = "This package contiains types to represent table constraints and\ninterfaces to bind between SQL database values and Haskell records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-data-compat" or (buildDepError "th-data-compat"))
          (hsPkgs."product-isomorphic" or (buildDepError "product-isomorphic"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."names-th" or (buildDepError "names-th"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      tests = {
        "nested" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quickcheck-simple" or (buildDepError "quickcheck-simple"))
            (hsPkgs."persistable-record" or (buildDepError "persistable-record"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
          };
        };
      };
    }