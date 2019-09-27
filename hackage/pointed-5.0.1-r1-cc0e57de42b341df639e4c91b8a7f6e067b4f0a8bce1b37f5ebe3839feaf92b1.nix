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
      comonad = true;
      containers = true;
      kan-extensions = true;
      semigroupoids = true;
      semigroups = true;
      stm = true;
      tagged = true;
      transformers = true;
      unordered-containers = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "pointed"; version = "5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/pointed/";
      url = "";
      synopsis = "Pointed and copointed data";
      description = "Pointed and copointed data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.0" && (compiler.version).lt "7.2")) (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (flags.comonad) (hsPkgs."comonad" or (buildDepError "comonad"))) ++ (pkgs.lib).optional (flags.containers) (hsPkgs."containers" or (buildDepError "containers"))) ++ (pkgs.lib).optional (flags.kan-extensions) (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.semigroups) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (flags.stm) (hsPkgs."stm" or (buildDepError "stm"))) ++ (pkgs.lib).optional (flags.tagged) (hsPkgs."tagged" or (buildDepError "tagged"))) ++ (pkgs.lib).optionals (flags.transformers) [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          ]) ++ (pkgs.lib).optionals (flags.unordered-containers) [
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }