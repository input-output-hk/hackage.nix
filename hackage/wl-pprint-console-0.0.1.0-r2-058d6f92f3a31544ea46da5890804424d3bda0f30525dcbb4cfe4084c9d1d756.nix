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
      identifier = { name = "wl-pprint-console"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "2016 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/wl-pprint-console#readme";
      url = "";
      synopsis = "Wadler/Leijen style pretty printer supporting colorful console output.";
      description = "Wadler/Leijen style pretty printer with support for annotations and colorful console output. Additional useful display routines are provided, e.g, for HTML output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."console-style" or (errorHandler.buildDepError "console-style"))
          (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }