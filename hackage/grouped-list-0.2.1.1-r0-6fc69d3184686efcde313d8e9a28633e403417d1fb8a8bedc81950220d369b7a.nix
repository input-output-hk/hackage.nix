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
      identifier = { name = "grouped-list"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md";
      url = "";
      synopsis = "Grouped lists. Equal consecutive elements are grouped.";
      description = "Grouped lists work like regular lists, except for two conditions:\n\n* Grouped lists are always finite. Attempting to construct an infinite\ngrouped list will result in an infinite loop.\n\n* Grouped lists internally represent consecutive equal elements as only\none, hence the name of /grouped lists/.\n\nThis mean that grouped lists are ideal for cases where the list has many\nrepetitions (like @[1,1,1,1,7,7,7,7,7,7,7,7,2,2,2,2,2]@, although they might\npresent some deficiencies in the absent of repetitions.\n\n/Warning: this library is in early development./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
      };
      tests = {
        "grouped-list-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grouped-list" or (errorHandler.buildDepError "grouped-list"))
          ];
          buildable = true;
        };
        "grouped-list-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grouped-list" or (errorHandler.buildDepError "grouped-list"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "grouped-list-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grouped-list" or (errorHandler.buildDepError "grouped-list"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }