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
      identifier = { name = "simplelru"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (jp) 2020-present, murakami";
      maintainer = "w18191263056@yahoo.co.jp";
      author = "murakami";
      homepage = "https://github.com/MurakamiKennzo/simplelru#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/githubuser/simplelru#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "simplelru-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simplelru" or (errorHandler.buildDepError "simplelru"))
            ];
          buildable = true;
          };
        };
      tests = {
        "simplelru-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simplelru" or (errorHandler.buildDepError "simplelru"))
            ];
          buildable = true;
          };
        };
      };
    }