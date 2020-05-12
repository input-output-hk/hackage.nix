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
    flags = { tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sstable"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 marius a. eriksen";
      maintainer = "marius a. eriksen";
      author = "marius a. eriksen";
      homepage = "";
      url = "";
      synopsis = "SSTables in Haskell";
      description = "\nThis library implements SSTables as described in the Bigtable\npaper: <http://labs.google.com/papers/bigtable.html>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "sstable" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        "testSSTable" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }