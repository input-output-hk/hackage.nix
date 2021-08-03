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
      identifier = { name = "trimdent"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2021 Grzegorz Milka";
      maintainer = "grzegorzmilka@gmail.com";
      author = "Grzegorz Milka";
      homepage = "https://github.com/gregorias/trimdent#readme";
      url = "";
      synopsis = "A utility for neat multiline string trimming";
      description = "Please see the README on GitHub at <https://github.com/gregorias/trimdent#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "trimdent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations-pretty-diff" or (errorHandler.buildDepError "hspec-expectations-pretty-diff"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."trimdent" or (errorHandler.buildDepError "trimdent"))
            ];
          buildable = true;
          };
        };
      };
    }