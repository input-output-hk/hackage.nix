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
    flags = {
      semigroup-in-base = true;
      identity-in-base = true;
      generics-in-base = true;
      enable-hedgehog = true;
      enable-doctest = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-semigroup"; version = "0.4.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup";
      url = "";
      synopsis = "A partial binary associative operator";
      description = "A partial semigroup is like a semigroup, but the operator is partial. We\nrepresent this in Haskell as a total function @(<>?) :: a -> a -> Maybe a@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optional (flags.generics-in-base) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.identity-in-base) (hsPkgs."base" or (buildDepError "base"))) ++ (if flags.semigroup-in-base
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [ (hsPkgs."semigroups" or (buildDepError "semigroups")) ]);
        };
      tests = {
        "docs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.enable-doctest) (hsPkgs."doctest" or (buildDepError "doctest"));
          };
        "examples" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."partial-semigroup" or (buildDepError "partial-semigroup"))
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs."hedgehog" or (buildDepError "hedgehog"))) ++ (if flags.semigroup-in-base
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [ (hsPkgs."semigroups" or (buildDepError "semigroups")) ]);
          };
        "properties" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."partial-semigroup" or (buildDepError "partial-semigroup"))
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs."hedgehog" or (buildDepError "hedgehog"))) ++ (if flags.semigroup-in-base
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [ (hsPkgs."semigroups" or (buildDepError "semigroups")) ]);
          };
        "generics" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."partial-semigroup" or (buildDepError "partial-semigroup"))
            ] ++ (pkgs.lib).optionals (flags.generics-in-base) ((pkgs.lib).optionals (flags.enable-hedgehog) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            ] ++ (if flags.semigroup-in-base
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [ (hsPkgs."semigroups" or (buildDepError "semigroups")) ]));
          };
        };
      };
    }