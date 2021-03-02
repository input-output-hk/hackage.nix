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
      specVersion = "1.0";
      identifier = { name = "HAppS-IxSet"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "2007 HAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "Alex Jacobson, Einar Karttunen";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."HAppS-Util" or (errorHandler.buildDepError "HAppS-Util"))
          (hsPkgs."HAppS-State" or (errorHandler.buildDepError "HAppS-State"))
          (hsPkgs."HAppS-Data" or (errorHandler.buildDepError "HAppS-Data"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }