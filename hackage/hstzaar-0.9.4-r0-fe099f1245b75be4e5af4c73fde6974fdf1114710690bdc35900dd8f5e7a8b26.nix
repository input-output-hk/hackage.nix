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
      identifier = { name = "hstzaar"; version = "0.9.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      author = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      homepage = "http://www.dcc.fc.up.pt/~pbv/stuff/hstzaar";
      url = "";
      synopsis = "A two player abstract strategy game.";
      description = "HsTZAAR is an implementation of TZAAR ((c) 2007 Kris Brum),\na two player abstract strategy game played on a hexagonal board.\nTZAAR is the the last game in the GIPF game series.\nThis program is based on the (retired) htzaar implementation\nby Tom Hawkins <tomahawkins@gmail.com>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hstzaar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
          buildable = true;
        };
      };
    };
  }