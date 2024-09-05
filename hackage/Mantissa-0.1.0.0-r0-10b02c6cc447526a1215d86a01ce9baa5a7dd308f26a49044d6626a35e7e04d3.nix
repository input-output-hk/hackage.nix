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
      identifier = { name = "Mantissa"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 James Cranch";
      maintainer = "cranch@cantab.net";
      author = "James Cranch";
      homepage = "https://github.com/jcranch/mantissa#readme";
      url = "";
      synopsis = "Reals in the interval [0,1), as machine words";
      description = "Please see the README on GitHub at <https://github.com/jcranch/Mantissa#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "Mantissa-test" = {
          depends = [
            (hsPkgs."Mantissa" or (errorHandler.buildDepError "Mantissa"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }