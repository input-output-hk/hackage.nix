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
      identifier = { name = "swf"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw";
      author = "Jeremy Shaw";
      homepage = "http://www.n-heptane.com/nhlab";
      url = "";
      synopsis = "A library for create Shockwave Flash (SWF) files";
      description = "A library for create Shockwave Flash (SWF) files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }