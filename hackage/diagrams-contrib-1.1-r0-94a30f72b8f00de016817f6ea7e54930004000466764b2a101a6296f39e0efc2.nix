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
      identifier = { name = "diagrams-contrib"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Various; see individual modules";
      author = "Various";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Collection of user contributions to diagrams EDSL";
      description = "A collection of user contributions for diagrams,\nan embedded domain-specific language for generation\nof vector graphics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."vector-space-points" or (buildDepError "vector-space-points"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."force-layout" or (buildDepError "force-layout"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."circle-packing" or (buildDepError "circle-packing"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        };
      tests = {
        "turtle-tests" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            ];
          };
        };
      };
    }