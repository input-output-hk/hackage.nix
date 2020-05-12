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
      identifier = { name = "hoodle-render"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "Hoodle file renderer";
      description = "Rendering library using cairo for hoodle file format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hoodle-types" or (errorHandler.buildDepError "hoodle-types"))
          (hsPkgs."gd" or (errorHandler.buildDepError "gd"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
          ];
        buildable = true;
        };
      };
    }