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
      specVersion = "1.18";
      identifier = { name = "express"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/express#readme";
      url = "";
      synopsis = "Express";
      description = "Express is a library for manipulating dynamically typed Haskell expressions.\nIt's like @ Data.Dynamic @ but with support for encoding applications and\nvariables.\n\nIt provides the @ Expr @ type and over a hundred functions for\nbuilding, evaluating, comparing, folding, canonicalizing and matching\n@ Expr @s.  See the README and Haddock documentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "core" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "canon" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "hole" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "match" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "map" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "fixtures" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "instances" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "express-instances" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "express-derive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "ord" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "listable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "name" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "name-derive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "fold" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "show" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "utils" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "compare" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "pairs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "tiers" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "u-extrapolate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "u-speculate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."express" or (buildDepError "express"))
            (hsPkgs."leancheck" or (buildDepError "leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }