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
      specVersion = "1.6";
      identifier = { name = "orchid-demo"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Haskell Wiki Demo";
      description = "Haskell Wiki Demo";
      buildType = "Simple";
      };
    components = {
      exes = {
        "orchid-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."salvia" or (errorHandler.buildDepError "salvia"))
            (hsPkgs."salvia-extras" or (errorHandler.buildDepError "salvia-extras"))
            (hsPkgs."orchid" or (errorHandler.buildDepError "orchid"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."Pipe" or (errorHandler.buildDepError "Pipe"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }