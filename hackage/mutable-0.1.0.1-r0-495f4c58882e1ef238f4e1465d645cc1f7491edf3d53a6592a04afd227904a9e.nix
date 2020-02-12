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
      specVersion = "1.12";
      identifier = { name = "mutable"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2020";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/mutable#readme";
      url = "";
      synopsis = "Automatic piecewise-mutable references for your types";
      description = "Associate and generate \"piecewise-mutable\" versions for your composite data\ntypes.  Think of it like a \"generalized MVector for all ADTs\".\n\nUseful for a situation where you have a record with many fields (or many nested\nrecords) that you want to use for efficient mutable in-place algorithms.  This\nlibrary lets you do efficient \"piecewise\" mutations (operations that only edit\none field), and also efficient entire-datatype copies/updates, as well, in many\ncases.\n\nSee <https://mutable.jle.im> for official introduction and documentation,\nor jump right in by importing \"Data.Mutable\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."generic-lens-core" or (buildDepError "generic-lens-core"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        buildable = true;
        };
      benchmarks = {
        "mutable-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."mutable" or (buildDepError "mutable"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      };
    }