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
      identifier = { name = "diagrams-wx"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Michael Smith";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/diagrams-wx#readme";
      url = "";
      synopsis = "Backend for rendering diagrams in wxWidgets";
      description = "An optional add-on to the diagrams-cairo package which\nallows rendering diagrams in wxWidgets (using wxHaskell).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
        buildable = true;
        };
      exes = {
        "diagrams-wx-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."diagrams-wx" or (errorHandler.buildDepError "diagrams-wx"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            ];
          buildable = true;
          };
        };
      };
    }