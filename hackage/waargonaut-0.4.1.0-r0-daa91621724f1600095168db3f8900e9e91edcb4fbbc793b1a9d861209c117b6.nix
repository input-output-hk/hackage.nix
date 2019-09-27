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
      identifier = { name = "waargonaut"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "oᴉ˙ldɟb@uɐǝs";
      author = "QFPL @ Data61";
      homepage = "https://github.com/qfpl/waargonaut";
      url = "";
      synopsis = "JSON wrangling";
      description = "Flexible, precise, and efficient JSON decoding/encoding library.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (buildToolDepError "cabal-doctest")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."digit" or (buildDepError "digit"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."nats" or (buildDepError "nats"))
          (hsPkgs."zippers" or (buildDepError "zippers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."hoist-error" or (buildDepError "hoist-error"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."witherable" or (buildDepError "witherable"))
          (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."wl-pprint-annotated" or (buildDepError "wl-pprint-annotated"))
          (hsPkgs."hw-json" or (buildDepError "hw-json"))
          (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
          (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
          (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."natural" or (buildDepError "natural"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."digit" or (buildDepError "digit"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."waargonaut" or (buildDepError "waargonaut"))
            ];
          buildable = true;
          };
        "waarg-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-expected-failure" or (buildDepError "tasty-expected-failure"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hedgehog-fn" or (buildDepError "hedgehog-fn"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."distributive" or (buildDepError "distributive"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."digit" or (buildDepError "digit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."zippers" or (buildDepError "zippers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."natural" or (buildDepError "natural"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."waargonaut" or (buildDepError "waargonaut"))
            ];
          buildable = true;
          };
        };
      };
    }