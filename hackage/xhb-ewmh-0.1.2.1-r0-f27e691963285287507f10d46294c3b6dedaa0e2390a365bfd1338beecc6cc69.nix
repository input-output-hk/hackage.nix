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
      specVersion = "1.10";
      identifier = { name = "xhb-ewmh"; version = "0.1.2.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Jochen Keil <jochen.keil+xhb-ewmh@gmail.com>";
      author = "Jochen Keil";
      homepage = "http://github.com/jotrk/xhb-ewmh/";
      url = "";
      synopsis = "EWMH utilities for XHB";
      description = "EWMH utilities for XHB";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xhb" or (errorHandler.buildDepError "xhb"))
          (hsPkgs."xhb-atom-cache" or (errorHandler.buildDepError "xhb-atom-cache"))
        ];
        buildable = true;
      };
    };
  }