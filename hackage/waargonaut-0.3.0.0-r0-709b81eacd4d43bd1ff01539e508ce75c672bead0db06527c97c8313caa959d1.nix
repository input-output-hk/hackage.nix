{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "waargonaut"; version = "0.3.0.0"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.buildToolDepError "cabal-doctest")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."digit" or (errorHandler.buildDepError "digit"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."zippers" or (errorHandler.buildDepError "zippers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."hoist-error" or (errorHandler.buildDepError "hoist-error"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
          (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
          (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."natural" or (errorHandler.buildDepError "natural"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."digit" or (errorHandler.buildDepError "digit"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."waargonaut" or (errorHandler.buildDepError "waargonaut"))
            ];
          buildable = true;
          };
        "waarg-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-fn" or (errorHandler.buildDepError "hedgehog-fn"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."digit" or (errorHandler.buildDepError "digit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."zippers" or (errorHandler.buildDepError "zippers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."natural" or (errorHandler.buildDepError "natural"))
            (hsPkgs."waargonaut" or (errorHandler.buildDepError "waargonaut"))
            ];
          buildable = true;
          };
        };
      };
    }