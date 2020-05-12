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
      specVersion = "1.8";
      identifier = { name = "restful-snap"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc";
      maintainer = "ozataman@gmail.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/ozataman/restful-snap";
      url = "";
      synopsis = "";
      description = "A convention-based RESTful routing mechanism for snap";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-extras" or (errorHandler.buildDepError "snap-extras"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
          ];
        buildable = true;
        };
      };
    }