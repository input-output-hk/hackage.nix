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
      test-hlint = true;
      test-doc-coverage = true;
      test-unit-tests = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "keera-hails-reactivevalues"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - Reactive Values";
      description = "This package contains a general definition of Reactive Values and several\nuseful combinators. A reactive value is a /typed mutable value with access\nproperties and change propagation/. Access property can be read-only,\nread-write or read-write.\n\nHow an RV is actually implemented, and when and how change propagation is\nexecuted is dependent on each RV. For instance, Gtk widget properties would\nnormally use the standard event-handler installers to implement change\npropagation, whereas pure Haskell values might fork a thread (or not) and\npropagate changes asynchronously.\n\nRVs can be created from pure models (see\n<https://github.com/keera-studios/keera-hails/tree/master/keera-hails-mvc-model-lightmodel\nkeera-hails-mvc-model-lightmodel> and\n<https://github.com/keera-studios/keera-hails/tree/master/keera-hails-mvc-model-protectedmodel\nkeera-hails-mvc-model-protectedmodel>), Gtk+\\/WX\\/Qt\\/HTML DOM\\/Android widget\nproperties\\/event handlers\\/getters\\/setters, files, sockets, FRP networks.\nOther backends are also available. See\n<https://github.com/keera-studios/keera-hails keera-hails> for a list of\navailable backends, tutorials, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ];
          build-tools = (pkgs.lib).optional (!(!flags.test-doc-coverage)) (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or (buildToolDepError "cabal-install")));
          buildable = if !flags.test-doc-coverage then false else true;
          };
        "unit-tests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-unit-tests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."keera-hails-reactivevalues" or (buildDepError "keera-hails-reactivevalues"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          buildable = if !flags.test-unit-tests then false else true;
          };
        };
      };
    }