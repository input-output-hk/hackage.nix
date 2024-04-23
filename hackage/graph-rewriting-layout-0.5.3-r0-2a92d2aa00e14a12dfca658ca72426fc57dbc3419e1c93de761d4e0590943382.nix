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
      identifier = { name = "graph-rewriting-layout"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Force-directed node placement intended for incremental graph drawing";
      description = "Defines basic methods for force-directed node displacement that can be combined into an incremental graph-drawing procedure. See graph-rewriting-ski package for an example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."graph-rewriting" or (errorHandler.buildDepError "graph-rewriting"))
          (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
        ];
        buildable = true;
      };
    };
  }