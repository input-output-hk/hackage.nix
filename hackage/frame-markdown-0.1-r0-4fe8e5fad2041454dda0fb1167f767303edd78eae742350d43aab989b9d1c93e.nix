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
      identifier = { name = "frame-markdown"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Adam Dunkley";
      maintainer = "\"Adam Dunkley\" <acd07u@cs.nott.ac.uk>";
      author = "Adam Dunkley";
      homepage = "";
      url = "";
      synopsis = "A markdown to Frame GUI writer for Pandoc";
      description = "A markdown to Frame GUI writer for Pandoc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."frame" or (errorHandler.buildDepError "frame"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          ];
        buildable = true;
        };
      };
    }