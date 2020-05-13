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
      identifier = { name = "shade"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Frederik Hanghøj Iversen";
      maintainer = "fhi.1990@gmail.com";
      author = "Frederik Hanghøj Iversen";
      homepage = "https://github.com/fredefox/shade#readme";
      url = "";
      synopsis = "A control structure used to combine heterogenous types with delayed effects.";
      description = "Please see the readme.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "shade" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shade" or (errorHandler.buildDepError "shade"))
            ];
          buildable = true;
          };
        };
      };
    }