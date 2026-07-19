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
      specVersion = "3.0";
      identifier = { name = "hgg-custom"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "Non-standard / advanced custom marks for hgg (dendrogram, ...)";
      description = "An add-on package that isolates non-standard \"custom marks\" — new plot\ntypes built on hgg-core's customMark extension point — from the core\nlibrary. It never touches core's MarkKind; it depends only on\nhgg-core's Primitive / customMark API. Add it as a dependency only when\nyou need these specialized visualizations (e.g. for random forests or\nhierarchical clustering).\n.\nCurrently ships a dendrogram mark (tree diagrams for hierarchical\nclustering), using pre-baked segments for easy cross-backend parity.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }