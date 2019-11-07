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
      specVersion = "2.2";
      identifier = { name = "hkd"; version = "0.1"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2019 Edward Kmett, 2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Edward Kmett <ekmett@gmail.com>";
      homepage = "https://github.com/ekmett/codex/tree/master/hkd#readme";
      url = "";
      synopsis = "\"higher-kinded data\"";
      description = "\"Higher-kinded data\" utilities, e.g.\n\n@\nclass FFunctor t where\n\\    ffmap :: (f ~> g) -> t f -> t g\n@\n\nand other classes and types.\n\n/Note:/ this package is experimental.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."some" or (buildDepError "some"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."transformers" or (buildDepError "transformers"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."tagged" or (buildDepError "tagged"));
        buildable = true;
        };
      tests = {
        "example-np" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hkd" or (buildDepError "hkd"))
            ];
          buildable = true;
          };
        "example-record" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hkd" or (buildDepError "hkd"))
            (hsPkgs."some" or (buildDepError "some"))
            ];
          buildable = true;
          };
        };
      };
    }