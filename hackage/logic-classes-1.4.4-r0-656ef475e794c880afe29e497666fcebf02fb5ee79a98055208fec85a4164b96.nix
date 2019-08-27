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
      specVersion = "1.9";
      identifier = { name = "logic-classes"; version = "1.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SeeReason Partners <partners@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://src.seereason.com/logic-classes";
      url = "";
      synopsis = "Framework for propositional and first order logic, theorem proving";
      description = "Package to support Propositional and First Order Logic.  It includes classes\nrepresenting the different types of formulas and terms, some instances of\nthose classes for types used in other logic libraries, and implementations of\nseveral logic algorithms, including conversion to normal form and a simple\nresolution-based theorem prover for any instance of FirstOrderFormula.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."incremental-sat-solver" or (buildDepError "incremental-sat-solver"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb-with-class" or (buildDepError "syb-with-class"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."PropLogic" or (buildDepError "PropLogic"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."set-extra" or (buildDepError "set-extra"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "tests" = {
          depends = [
            (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."incremental-sat-solver" or (buildDepError "incremental-sat-solver"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."PropLogic" or (buildDepError "PropLogic"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."set-extra" or (buildDepError "set-extra"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      };
    }