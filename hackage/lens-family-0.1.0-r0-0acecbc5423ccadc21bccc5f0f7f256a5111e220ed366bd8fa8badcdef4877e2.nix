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
      identifier = { name = "lens-family"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Russell O'Connor";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "Lens Families";
      description = "This package provides optimal first class functional references\nIn addition to the usual operations of getting, setting and composition, plus integration with monad state, lens families provide some unique features:\n\n* Polymorphic updating\n\n* Cast projection functions to read-only lenses\n\n* Cast semantic editor combinators to modify-only lenses";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
        ];
        buildable = true;
      };
    };
  }