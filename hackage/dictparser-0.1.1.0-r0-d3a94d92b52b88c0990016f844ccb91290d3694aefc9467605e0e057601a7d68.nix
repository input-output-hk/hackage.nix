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
      identifier = { name = "dictparser"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Mark Wotton, 2013";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "http://github.com/mwotton/dictparser";
      url = "";
      synopsis = "Parsec parsers for the DICT format produced by dictfmt -t";
      description = "Parsec parsers for DICT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "dictparser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dictparser" or (errorHandler.buildDepError "dictparser"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dictparser" or (errorHandler.buildDepError "dictparser"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }