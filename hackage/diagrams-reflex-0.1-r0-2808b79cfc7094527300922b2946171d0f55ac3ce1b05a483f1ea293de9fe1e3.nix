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
      identifier = { name = "diagrams-reflex"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Daniel Bergey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "reflex backend for diagrams drawing EDSL.";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to dynamic inline SVGs.\nIt uses @reflex-dom@ and the @reflex@ FRP system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom-contrib" or (errorHandler.buildDepError "reflex-dom-contrib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }