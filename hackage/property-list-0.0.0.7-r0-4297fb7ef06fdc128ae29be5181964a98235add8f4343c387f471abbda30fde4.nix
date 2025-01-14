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
    flags = {
      new-data-object = true;
      new-template-haskell = true;
      haxml_1_13 = false;
    };
    package = {
      specVersion = "1.2";
      identifier = { name = "property-list"; version = "0.0.0.7"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/property-list";
      url = "";
      synopsis = "XML property list parser";
      description = "Parser, data type and formatter for Apple's XML property list 1.0 format.\nThe bytestring-0.9.1.5 update on hackage seems to have\ncratered the build for many packages, including the last\nseveral versions of this one, so this version will\nprobably not build properly on the hackage site.\nAs far as I know, though, that is the only reason\nit fails. This version includes a hack to try to make\nit build on the site, triggered by the HaXml_1_13 build flag.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or (errorHandler.buildDepError "bytestring-class"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."th-fold" or (errorHandler.buildDepError "th-fold"))
        ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ]) ++ [
          (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
        ]) ++ (if flags.haxml_1_13
          then [
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-class" or (errorHandler.buildDepError "bytestring-class"))
            (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ]
          else [ (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml")) ]);
        buildable = true;
      };
    };
  }