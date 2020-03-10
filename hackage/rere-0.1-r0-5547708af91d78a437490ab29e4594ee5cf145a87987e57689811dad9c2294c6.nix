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
    flags = { rere-cfg = true; rere-intersection = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "rere"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Regular-expressions extended with fixpoints for context-free powers";
      description = "By extending regular expressions with (explicit) fixed points\nwe can recognize context-free grammars.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (buildDepError "void"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.rere-cfg && (compiler.isGhc && (compiler.version).ge "7.8")) [
          (hsPkgs."fin" or (buildDepError "fin"))
          (hsPkgs."vec" or (buildDepError "vec"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."rere" or (buildDepError "rere"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.4")
            then false
            else true;
          };
        };
      benchmarks = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."derp" or (buildDepError "derp"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."rere" or (buildDepError "rere"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (buildDepError "void"));
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.4")
            then false
            else true;
          };
        "json" = {
          depends = ([
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."derp" or (buildDepError "derp"))
            (hsPkgs."fin" or (buildDepError "fin"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."rere" or (buildDepError "rere"))
            (hsPkgs."vec" or (buildDepError "vec"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (buildDepError "void"));
          buildable = if !(flags.rere-cfg && (compiler.isGhc && (compiler.version).ge "7.8"))
            then false
            else true;
          };
        };
      };
    }