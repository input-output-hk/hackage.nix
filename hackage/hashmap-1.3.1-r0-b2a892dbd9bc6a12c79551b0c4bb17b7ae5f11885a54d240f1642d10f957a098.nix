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
    flags = { oldcontainers = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hashmap"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2011-2012 Milan Straka, 2016 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Milan Straka";
      homepage = "https://github.com/foxik/hashmap";
      url = "";
      synopsis = "Persistent containers Map and Set based on hashing.";
      description = "An implementation of persistent 'Map' and 'Set' containers\nbased on hashing. The implementation is build on\ntop of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',\nwith very similar API. It uses 'Hashable' class from the\n@hashable@ package for hashing.\n\nThis package can be used as a drop-in replacement for\n'Data.Map' and 'Data.Set' modules.\n\nThe @'Map' key value@ is an 'Data.IntMap.IntMap'\nindexed by the hash value, containing either one ('key', 'value')\nor a @'Data.Map.Map' key value@ for all keys with the same hash value.\n\nThe @'Set' elem@ is an 'Data.IntMap.IntMap' indexed by\nthe hash value, containing either one 'elem' or @'Data.Set.Set' elem@ for\nall elements with the same hash value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ] ++ [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        };
      };
    }