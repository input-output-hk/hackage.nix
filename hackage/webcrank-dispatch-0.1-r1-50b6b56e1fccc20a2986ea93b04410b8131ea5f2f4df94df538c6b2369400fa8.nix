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
      identifier = { name = "webcrank-dispatch"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Richard Wallace";
      maintainer = "Richard Wallace <rwallace@thewallacepack.net>";
      author = "Richard Wallace <rwallace@thewallacepack.net>";
      homepage = "https://github.com/webcrank/webcrank-dispatch.hs";
      url = "";
      synopsis = "A simple request dispatcher.";
      description = "A simple request dispatcher.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."reroute" or (errorHandler.buildDepError "reroute"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }