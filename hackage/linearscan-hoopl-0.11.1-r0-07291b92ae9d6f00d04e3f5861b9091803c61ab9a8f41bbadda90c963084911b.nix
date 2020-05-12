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
      identifier = { name = "linearscan-hoopl"; version = "0.11.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/linearscan-hoopl";
      url = "";
      synopsis = "Makes it easy to use the linearscan register allocator with Hoopl";
      description = "This module provides a convenience wrapper and a type class, 'NodeAlloc',\nwhich makes it much easier to use the @linearscan@ library to allocate\nregisters for Hoople intermediate representations.\n\nAdditionally, it provides a DSL for construction of assembly language DSLs\nthat compile into Hoople program graphs.  See the tests for a concrete\nexample.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
          (hsPkgs."linearscan" or (errorHandler.buildDepError "linearscan"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
            (hsPkgs."linearscan" or (errorHandler.buildDepError "linearscan"))
            (hsPkgs."linearscan-hoopl" or (errorHandler.buildDepError "linearscan-hoopl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }