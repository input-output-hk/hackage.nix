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
      identifier = { name = "xhb-atom-cache"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Jochen Keil <jochen.keil+xhb-atom-cache@gmail.com>";
      author = "Jochen Keil";
      homepage = "http://github.com/jotrk/xhb-atom-cache/";
      url = "";
      synopsis = "Atom cache for XHB";
      description = "Atom cache for XHB";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xhb" or (errorHandler.buildDepError "xhb"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }