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
      specVersion = "1.2";
      identifier = { name = "DarcsHelpers"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2008 Thomas Hartman";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "Code used by Patch-Shack that seemed sensible to open for reusability";
      description = "Parse darcs output";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."xml-parsec" or (errorHandler.buildDepError "xml-parsec"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
        ];
        buildable = true;
      };
    };
  }