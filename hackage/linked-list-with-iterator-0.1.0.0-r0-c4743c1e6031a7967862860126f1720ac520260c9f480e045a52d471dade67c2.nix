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
      identifier = { name = "linked-list-with-iterator"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "cindylinz@gmail.com";
      author = "Cindy Wang (CindyLinz)";
      homepage = "https://github.com/CindyLinz/Haskell-linked-list-with-iterator#readme";
      url = "";
      synopsis = "A pure linked list which is mutable through iterators.";
      description = "It's iternally implemented by 'Data.IntMap.Strict.IntMap' or 'Data.Map.Strict.Map' 'Integer',\nusing 'Int' or 'Integer' as the iterator type respectly.\nMost of the operations cost @O(lg N)@.\n\nEach newly inserted element will consume a unique number and never reuse old numbers.\nChoose 'Int' one if you're sure that there're no more than 'Int' space times of insertions,\nor choose 'Integer' one otherwise.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "linked-list-with-iterator-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."linked-list-with-iterator" or (buildDepError "linked-list-with-iterator"))
            ];
          buildable = true;
          };
        };
      };
    }