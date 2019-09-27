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
      identifier = { name = "open-typerep"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/open-typerep";
      url = "";
      synopsis = "Open type representations and dynamic types";
      description = "This package uses Data Types à la Carte to provide open type representations\nand dynamic types/coercions for open type universes.\n\nExample 1 (dynamic types):\n\n> type MyUniverse = IntType :+: BoolType\n>\n> hlist :: [Dynamic MyUniverse]\n> hlist = [toDyn True, toDyn (1 :: Int)]\n\n> *Main> hlist\n> [True,1]\n\nNote that if we were using \"Data.Dynamic\", it would just print\n\n> [<<Bool>>,<<Int>>]\n\nExample 2 (dynamically typed addition):\n\n> addDyn :: (TypeEq ts ts, PWitness Num ts ts) => Dynamic ts -> Dynamic ts -> Maybe (Dynamic ts)\n> addDyn (Dyn ta a) (Dyn tb b) = do\n>     Dict <- typeEq ta tb\n>     Dict <- pwit pNum ta\n>     return (Dyn ta (a+b))\n\n\"Data.Dynamic\" could only do this monomorphically, for one 'Num' type at a\ntime.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syntactic" or (buildDepError "syntactic"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."open-typerep" or (buildDepError "open-typerep"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "dynamic-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."open-typerep" or (buildDepError "open-typerep"))
            ];
          buildable = true;
          };
        };
      };
    }