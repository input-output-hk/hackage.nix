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
    flags = { export-properties = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "heyting-algebras"; version = "0.0.1.2"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "";
      url = "";
      synopsis = "Heyting and Boolean algebras";
      description = "This package provides Heyting and Boolean operations together\nwith various constructions of Heyting algebras.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free-algebras" or (errorHandler.buildDepError "free-algebras"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
          ] ++ (pkgs.lib).optional (flags.export-properties) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
        };
      tests = {
        "heyting-algebras-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."heyting-algebras" or (errorHandler.buildDepError "heyting-algebras"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }