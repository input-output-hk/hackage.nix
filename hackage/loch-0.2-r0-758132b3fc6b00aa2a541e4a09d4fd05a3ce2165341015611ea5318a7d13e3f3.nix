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
      specVersion = "0";
      identifier = { name = "loch"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "Support for precise error locations in source files";
      description = "Location-emitting tracing and errors for Haskell";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "loch" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }