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
      identifier = { name = "hoodle-parser"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "Hoodle file parser";
      description = "Text parser for hoodle xml file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."hoodle-types" or (errorHandler.buildDepError "hoodle-types"))
          (hsPkgs."xournal-types" or (errorHandler.buildDepError "xournal-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ];
        buildable = true;
        };
      };
    }