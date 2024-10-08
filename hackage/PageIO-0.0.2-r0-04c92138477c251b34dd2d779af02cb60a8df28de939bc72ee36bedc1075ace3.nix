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
      identifier = { name = "PageIO"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Page-oriented extraction and composition library";
      description = "Provides an interface to the PageIn export format (.dux)\nfrom the StreamServe Persuasion(tm) platform, using it\nboth as a data extraction as well as a page layout DSL.\n(Extremely experimental, no documentations at the moment!)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stringtable-atom" or (errorHandler.buildDepError "stringtable-atom"))
          (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
        ];
        buildable = true;
      };
    };
  }