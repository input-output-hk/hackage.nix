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
      specVersion = "1.6";
      identifier = { name = "diagrams-lib"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "http://code.google.com/p/diagrams/";
      url = "";
      synopsis = "Embedded domain-specific language for declarative graphics";
      description = "Diagrams is a flexible, extensible EDSL for creating\ngraphics of many types.  Graphics can be created\nin arbitrary vector spaces and rendered with\nmultiple backends.  diagrams-lib provides a\nstandard library of primitives and operations for\ncreating diagrams.  To get started using it, see\n\"Diagrams.Prelude\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }