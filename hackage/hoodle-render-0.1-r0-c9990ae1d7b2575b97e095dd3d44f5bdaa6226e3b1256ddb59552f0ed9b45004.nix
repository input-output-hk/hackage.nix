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
    flags = { poppler = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-render"; version = "0.1"; };
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
        depends = if flags.poppler
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hoodle-types" or (errorHandler.buildDepError "hoodle-types"))
            (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hoodle-types" or (errorHandler.buildDepError "hoodle-types"))
            (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
            ];
        buildable = true;
        };
      };
    }