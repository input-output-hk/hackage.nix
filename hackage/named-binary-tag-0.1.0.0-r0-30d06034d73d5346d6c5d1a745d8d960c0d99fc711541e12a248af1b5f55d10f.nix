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
      specVersion = "2.4";
      identifier = { name = "named-binary-tag"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "davidrgarland@me.com";
      author = "David Garland";
      homepage = "https://github.com/davidgarland/named-binary-tag";
      url = "";
      synopsis = "NBT (named binary tag) serialization and deserialization.";
      description = "This project was created because the old nbt package has had a 1-liner open issue preventing compilation for 2 years now at the time of writing, despite submitting a pull request to fix it.\n\nWhile I was at it, I went ahead and changed the data structure to use konsumlamm's rrb-vector package instead of lists or unboxed arrays for more well-rounded asymptotics.\n\nStrictData is also turned on, and some functions are exported for reading/writing NBT files that remove some of the old boilerplate code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."rrb-vector" or (errorHandler.buildDepError "rrb-vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."named-binary-tag" or (errorHandler.buildDepError "named-binary-tag"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }