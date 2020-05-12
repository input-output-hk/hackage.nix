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
      identifier = { name = "smallcheck-lens"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/smallcheck-lens";
      url = "";
      synopsis = "SmallCheck properties for lens";
      description = "@SmallCheck@ properties for @Lens@es, @Setter@s, @Traversal@s, @Iso@s and @Prism@s.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."smallcheck-series" or (errorHandler.buildDepError "smallcheck-series"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
        };
      };
    }