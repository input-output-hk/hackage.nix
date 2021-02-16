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
      specVersion = "1.12";
      identifier = {
        name = "hs-swisstable-hashtables-class";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2021 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/hs-swisstable-hashtables-class#readme";
      url = "";
      synopsis = "Data.HashTable.Class instance definition for Data.HashTable.ST.Swiss";
      description = "Please see the README on GitHub at <https://github.com/nakaji-dayo/hs-swisstable-hashtables-class#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."swisstable" or (errorHandler.buildDepError "swisstable"))
          ];
        buildable = true;
        };
      tests = {
        "hs-swisstable-hashtables-class-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."hs-swisstable-hashtables-class" or (errorHandler.buildDepError "hs-swisstable-hashtables-class"))
            (hsPkgs."swisstable" or (errorHandler.buildDepError "swisstable"))
            ];
          buildable = true;
          };
        };
      };
    }