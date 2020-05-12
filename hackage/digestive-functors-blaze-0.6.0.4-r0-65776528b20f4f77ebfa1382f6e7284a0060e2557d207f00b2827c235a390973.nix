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
      identifier = { name = "digestive-functors-blaze"; version = "0.6.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Blaze frontend for the digestive-functors library";
      description = "Blaze frontend for the digestive-functors library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }