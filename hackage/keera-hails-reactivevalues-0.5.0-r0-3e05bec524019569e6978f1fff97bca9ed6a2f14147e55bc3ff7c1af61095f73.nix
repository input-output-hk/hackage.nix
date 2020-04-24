{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          build-tools = (pkgs.lib).optional (!(!flags.test-doc-coverage)) (hsPkgs.buildPackages.cabal-install or (pkgs.buildPackages.cabal-install or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-install")));
          buildable = if !flags.test-doc-coverage then false else true;
          };
        "unit-tests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-unit-tests)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = if !flags.test-unit-tests then false else true;
          };
        };
      };
    }