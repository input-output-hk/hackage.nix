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
    flags = { base2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "semigroups-actions"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Petr Pudlák";
      maintainer = "Petr Pudlák <petr.mvd@gmail.com>";
      author = "Petr Pudlák";
      homepage = "http://github.com/ppetr/semigroups-actions/";
      url = "";
      synopsis = "Semigroups actions";
      description = "In mathematics, an action of a semigroup on a set is an operation that\nassociates each element of the semigroup is with a transformation on the\nset.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.base2
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
        };
      };
    }