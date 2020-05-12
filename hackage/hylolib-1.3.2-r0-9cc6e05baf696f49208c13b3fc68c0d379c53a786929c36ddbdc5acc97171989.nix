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
      specVersion = "1.2.3";
      identifier = { name = "hylolib"; version = "1.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dgorin@dc.uba.ar";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Tools for hybrid logics related programs";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          ];
        buildable = true;
        };
      };
    }