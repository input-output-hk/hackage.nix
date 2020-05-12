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
      identifier = { name = "symmetric-properties"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Joel Burget";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "https://github.com/joelburget/symmetric-properties#readme";
      url = "";
      synopsis = "Monoids for sameness and uniqueness.";
      description = "Test whether every element of a 'Foldable' is the 'Same' or 'Unique'.\n\n> > allSame (replicate 1000 1)\n> True\n> > allSame [1..]\n> False\n> > allUnique [1..1000]\n> True\n> > allUnique (cycle [1..100])\n> False";
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
        "symmetric-properties-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symmetric-properties" or (errorHandler.buildDepError "symmetric-properties"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }