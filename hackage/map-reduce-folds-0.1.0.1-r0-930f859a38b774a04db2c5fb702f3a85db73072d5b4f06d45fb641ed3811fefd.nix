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
    flags = { dump-core = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "map-reduce-folds"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "";
      url = "";
      synopsis = "foldl wrappers for map-reduce";
      description = "map-reduce-folds simplifies the building of folds to do map-reduce style computations on collections.  It breaks the map/reduce into an unpacking step where items may be filtered, transformed or \"melted\" (made into several new items), an assign step where the unpacked items are assigned keys, a grouping step where the assigned items are grouped by key and then a reduce step which is applied to each grouped subset.  Tools are provided to simplify building the individual steps and then \"engines\" are provided for combining them into efficient folds returning an assortment of containers.  The various pieces are replicated for effectful (monadic) steps producing effectful (monadic) folds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."discrimination" or (buildDepError "discrimination"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streamly" or (buildDepError "streamly"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"));
        };
      exes = {
        "listStats" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."map-reduce-folds" or (buildDepError "map-reduce-folds"))
            ];
          };
        "readmeExample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."map-reduce-folds" or (buildDepError "map-reduce-folds"))
            ];
          };
        };
      tests = {
        "map-reduce-folds-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."map-reduce-folds" or (buildDepError "map-reduce-folds"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            ];
          };
        };
      benchmarks = {
        "bench-map-reduce" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."map-reduce-folds" or (buildDepError "map-reduce-folds"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"));
          };
        };
      };
    }