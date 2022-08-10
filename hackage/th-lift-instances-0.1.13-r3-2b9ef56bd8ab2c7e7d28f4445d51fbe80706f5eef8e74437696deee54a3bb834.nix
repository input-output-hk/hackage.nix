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
      identifier = { name = "th-lift-instances"; version = "0.1.13"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2016 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/th-lift-instances/";
      url = "";
      synopsis = "Lift instances for template-haskell for common data types.";
      description = "Most data types in haskell platform do not have Lift instances.\nThis package provides orphan instances for containers, text, bytestring and vector.\nIt also acts as a compat instances, definining instances not existing\nin @template-haskell@\n\nNote that <https://hackage.haskell.org/package/th-lift th-lift> package provides\nTemplate Haskell based derivation of @Lift@ instances (when you cannot use @DeriveLift@ extension),\nand <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for TH datatypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }