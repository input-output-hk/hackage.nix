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
      specVersion = "2.2";
      identifier = { name = "relation"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2019-2021 John Ky,\n(C) 2012 Drew Day,\n(C) 2010 Leonel Fonseca";
      maintainer = "John Ky";
      author = "Leonel Fonseca";
      homepage = "https://www.github.com/haskell-works/relation/";
      url = "";
      synopsis = "A data structure representing Relations on Sets.";
      description = "A library to model relationships between two objects that are subclasses of Ord.\nWe use a two Maps that allows fast searching either by the key element or the value element.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "relation-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."relation" or (errorHandler.buildDepError "relation"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        "relation-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."relation" or (errorHandler.buildDepError "relation"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover.components.exes.doctest-discover or (pkgs.buildPackages.doctest-discover or (errorHandler.buildToolDepError "doctest-discover:doctest-discover")))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."relation" or (errorHandler.buildDepError "relation"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover.components.exes.doctest-discover or (pkgs.buildPackages.doctest-discover or (errorHandler.buildToolDepError "doctest-discover:doctest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }