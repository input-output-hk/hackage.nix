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
      identifier = { name = "chatty-utils"; version = "0.7.3.6"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "darcs@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "Some utilities any serious chatty-based application may need.";
      description = "Some utilities any serious chatty-based application may need. Includes a graph type, search trees, a None class, a counter and an atom store.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }