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
    flags = { testing = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "list-tries"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+list-tries@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/list-tries/";
      url = "";
      synopsis = "Tries and Patricia tries: finite sets and maps for list keys";
      description = "This library provides implementations of finite sets and maps for list keys\nusing tries, both simple and of the Patricia kind. In most (or all? sorry,\nhaven't benchmarked yet) cases, the Patricia tries will have better\nperformance, so use them unless you have reasons not to.\n\nThe data types are parametrized over the map type they use internally to\nstore the child nodes: this allows extending them to support different kinds\nof key types or increasing efficiency. Child maps are required to be\ninstances of the Map class in Data.ListTrie.Base.Map. Some operations\nadditionally require an OrdMap instance.\n\nThe Eq, Ord, and Enum modules contain ready structures for key types which\nare instances of those classes, using lists of pairs, Data.Map, and\nData.IntMap respectively.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "list-tries-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ] ++ (pkgs.lib).optionals (flags.testing) [
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ChasingBottoms" or (buildDepError "ChasingBottoms"))
            ];
          buildable = if !flags.testing then false else true;
          };
        };
      };
    }