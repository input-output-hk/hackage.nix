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
    flags = { static = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hyloutils"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dgorin@dc.uba.ar";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Very small programs for hybrid logics";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            ];
          buildable = true;
          };
        "rewriter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            ];
          buildable = true;
          };
        };
      };
    }