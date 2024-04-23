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
    flags = { derivedatatypeable = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "data-lens-fd"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/roconnor/data-lens-fd/";
      url = "";
      synopsis = "Lenses";
      description = "Lenses";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."comonad-transformers" or (errorHandler.buildDepError "comonad-transformers"))
        ];
        buildable = true;
      };
    };
  }