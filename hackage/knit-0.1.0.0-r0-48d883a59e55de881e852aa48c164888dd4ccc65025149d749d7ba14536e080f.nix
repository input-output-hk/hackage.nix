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
      specVersion = "2.0";
      identifier = { name = "knit"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "p.kamenarsky@gmail.com";
      author = "Philip Kamenarsky";
      homepage = "https://github.com/pkamenarsky/knit#readme";
      url = "";
      synopsis = "Ties the knot on data structures that reference each other by unique keys.";
      description = "Please see the README on GitHub at <https://github.com/pkamenarsky/knit#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."knit".components.sublibs.generics-eot or (errorHandler.buildDepError "knit:generics-eot"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      sublibs = {
        "generics-eot" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      tests = {
        "knit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."knit" or (errorHandler.buildDepError "knit"))
            ];
          buildable = true;
          };
        };
      };
    }