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
      specVersion = "1.8";
      identifier = { name = "cellrenderer-cairo"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "";
      url = "";
      synopsis = "Cairo-based CellRenderer";
      description = "A CellRenderer instance that allows for arbitrary Cairo\nrendering functions to render each item in a TreeView.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-2.0" or (errorHandler.pkgConfDepError "gtk+-2.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }