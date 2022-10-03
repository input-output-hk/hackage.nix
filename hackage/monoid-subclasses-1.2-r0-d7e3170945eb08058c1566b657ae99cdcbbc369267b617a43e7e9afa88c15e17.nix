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
      identifier = { name = "monoid-subclasses"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2021 Mario Blažević";
      maintainer = "Mario Blažević <blamario@protonmail.com>";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/monoid-subclasses/";
      url = "";
      synopsis = "Subclasses of Monoid";
      description = "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and\ntext packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."commutative-semigroups" or (errorHandler.buildDepError "commutative-semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
            ];
          buildable = true;
          };
        };
      };
    }