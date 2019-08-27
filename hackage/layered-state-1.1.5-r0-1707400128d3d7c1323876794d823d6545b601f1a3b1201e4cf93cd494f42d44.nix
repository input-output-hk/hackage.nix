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
      identifier = { name = "layered-state"; version = "1.1.5"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/layered-state";
      url = "";
      synopsis = "Control structure similar to Control.Monad.State, allowing multiple nested states, distinguishable by provided phantom types.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-utils" or (buildDepError "lens-utils"))
          (hsPkgs."monad-branch" or (buildDepError "monad-branch"))
          (hsPkgs."monoid" or (buildDepError "monoid"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."prologue" or (buildDepError "prologue"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."typelevel" or (buildDepError "typelevel"))
          ];
        };
      benchmarks = {
        "layered-state-benchmark" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
            (hsPkgs."layered-state" or (buildDepError "layered-state"))
            (hsPkgs."mtl-c" or (buildDepError "mtl-c"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            ];
          };
        };
      };
    }