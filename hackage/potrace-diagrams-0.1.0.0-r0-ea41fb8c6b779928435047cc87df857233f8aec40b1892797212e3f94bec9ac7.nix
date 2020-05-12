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
      identifier = { name = "potrace-diagrams"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2015. Christopher Chalmers <c.chalmers@me.com>";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Potrace bindings for the diagrams library";
      description = "<http://potrace.sourceforge.net Potrace> bindings for the\n<projects.haskell.org/diagrams/ diagrams> library. Converts images\nusing the JuicyPixels library to create diagrams paths.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."potrace" or (errorHandler.buildDepError "potrace"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      };
    }