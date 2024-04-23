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
      identifier = { name = "xhtml-combinators"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alasdair.armstrong@googlemail.com";
      author = "Alasdair Armstrong";
      homepage = "http://www.dcs.shef.ac.uk/~aca08aa/xhtmlc.html";
      url = "";
      synopsis = "Fast and easy to use XHTML combinators.";
      description = "xhtml-combinators provides a set of (hopefully!) fast and\neasy to use XHTML 1.0 Strict combinators built on top of the\nData.Text library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }